unit helper;

interface
{$i merp.inc}
uses baseForm, mainform, forms, db;

type
  TExeInfo = class(TObject)
  private
    FFileName: string;
    function getFileInfo(infoName: string): string;
  public
    constructor Create(filename: string);
    function GetFileVersion(): string;
    function GetProductName(): string;
  end;

function getAppName(): string;
procedure setActiveForm(frm: TfrmBase);
procedure initialize(frm: TfrmMain);
function getConfig(configName: string): string; overload;
function getConfig(configName: string; defValue: string): string; overload;
function encryptPassword(pass: string): string;
function IsBitSet(const val: Longint; const TheBit: Byte): Boolean;
function BitOn(const val: Longint; const TheBit: Byte): Longint;
function BitOff(const val: Longint; const TheBit: Byte): Longint;
function BitToggle(const val: Longint; const TheBit: Byte): Longint;
procedure showForm(form: TFormClass);
function showFormModal(form: TFormClass): Integer;
function padleft(const aString: AnsiString; aCharCount: Integer;
  aChar: AnsiChar): AnsiString;
function padRight(const aString: AnsiString; aCharCount: Integer;
  aChar: AnsiChar): AnsiString;
procedure renderReport(reportName: string; ds: TDataset);
function reportFile(report: string): String;

implementation

uses Windows, Classes, SysUtils, configuration, DCPmd5, acl, reportform;

var
  instance: TExeInfo;
  activeForm: TfrmBase;
  mainfrm: TfrmMain;
  config: TConfiguration;

function padleft(const aString: AnsiString; aCharCount: Integer;
  aChar: AnsiChar): AnsiString;
var
  PadCount: Integer;
begin
  PadCount := aCharCount - Length(aString);
  if PadCount > 0 then
  begin
    SetLength(Result, aCharCount);
    FillChar(Result[1], PadCount, aChar);
    Move(aString[1], Result[PadCount + 1], Length(aString));
  end
  else
    Result := aString;
end;

function padRight(const aString: AnsiString; aCharCount: Integer;
  aChar: AnsiChar): AnsiString;
var
  PadCount: Integer;
begin
  PadCount := aCharCount - Length(aString);
  if PadCount > 0 then
  begin
    SetLength(Result, aCharCount);
    FillChar(Result[1], PadCount, aChar);
    Move(aString[1], Result[PadCount + 1], Length(aString));
  end
  else
    Result := aString;
end;

function encryptPassword(pass: string): string;
var
  md5: TDCP_md5;
  Digest: array [0 .. 15] of Byte;
  i: Integer;
begin
  md5 := TDCP_md5.Create(nil);
  md5.Init();
  md5.UpdateStr(pass);
  md5.Final(Digest);
  Result := '';
  for i := 0 to 15 do
    Result := Result + IntToHex(Digest[i], 2);
end;

procedure initialize(frm: TfrmMain);
begin
  mainfrm := frm;
end;

function showFormModal(form: TFormClass): Integer;
var
  frm: TForm;
begin
  if acl.isAllow(form.ClassName, aclRead) then
  begin
    frm := form.Create(nil);
    Result := frm.showModal;
  end;
end;

procedure showForm(form: TFormClass);
var
  i: Integer;
  found: Boolean;
  frm: TForm;
begin
  found := false;
  for i := 0 to mainfrm.MDIChildCount - 1 do
  begin
    if mainfrm.MDIChildren[i].ClassName = form.ClassName then
    begin
      mainfrm.MDIChildActivated(mainfrm.MDIChildren[i].Handle);
      found := true;
      break;
    end;
  end;
  if (not found) then
  begin
    if acl.isAllow(form.ClassName, aclRead) then
    begin
      frm := form.Create(mainfrm);
      frm.FormStyle := fsMDIChild;
      frm.WindowState := wsMaximized;
      frm.Show;
    end;
  end;
end;

function getConfiguration(): TConfiguration;
begin
  if (config = nil) then
    config := TConfiguration.Create;
  Result := config;
end;

procedure setActiveForm(frm: TfrmBase);
begin
  activeForm := frm;
  if (mainfrm <> nil) then
    mainfrm.setActiveForm(frm);
end;
{ TExeInfo }

constructor TExeInfo.Create(filename: string);
begin
  FFileName := filename;
end;

function TExeInfo.GetFileVersion(): string;
begin
  Result := getFileInfo('FileVersion');
end;

function TExeInfo.GetProductName(): string;
begin
  Result := getFileInfo('ProductName');
end;

function TExeInfo.getFileInfo(infoName: string): string;
var
  c_StringInfo: string;
var
  n, Len: cardinal;
  Buf, Value: PChar;
begin
  c_StringInfo := 'StringFileInfo\040904E4\' + infoName;
  Result := '';
  n := GetFileVersionInfoSize(PChar(FFileName), n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    try
      GetFileVersionInfo(PChar(FFileName), 0, n, Buf);
      if VerQueryValue(Buf, PChar(c_StringInfo), Pointer(Value), Len) then
      begin
        Result := Trim(Value);
      end;
    finally
      FreeMem(Buf, n);
    end;
  end;
end;

function getInstance(): TExeInfo;
begin
  if instance = nil then
  begin
    instance := TExeInfo.Create(ParamStr(0));
  end;
  Result := instance;
end;

function getAppName(): string;
begin
  Result := getInstance().GetProductName() + ' v.' + getInstance()
    .GetFileVersion();
end;

function getConfig(configName: string): string;
begin
  Result := getConfig(configName, '');
end;

function getConfig(configName: string; defValue: string): string;
begin
  Result := configuration.getInstance().getConfig(configName, defValue);
end;

function IsBitSet(const val: Longint; const TheBit: Byte): Boolean;
begin
  Result := (val and (1 shl TheBit)) <> 0;
end;

function BitOn(const val: Longint; const TheBit: Byte): Longint;
begin
  Result := val or (1 shl TheBit);
end;

function BitOff(const val: Longint; const TheBit: Byte): Longint;
begin
  Result := val and ((1 shl TheBit) xor $FFFFFFFF);
end;

function BitToggle(const val: Longint; const TheBit: Byte): Longint;
begin
  Result := val xor (1 shl TheBit);
end;

procedure renderReport(reportName: string; ds: TDataset);
var
  frm: TfrmReport;
begin
  frm := TfrmReport.Create(mainfrm);
  // TODO Dynamic load
  // frm.frxReport1.LoadFromFile('reports\' + reportName + '.fr3',true);
  // frm.frxDBDataset1.DataSet := ds;
  // frm.Show;
end;

function reportFile(report: string): String;
var
  path: String;
begin

{$IFDEF DEV_MODE}
  Result := ExtractFilePath(ParamStr(0)) + '..' + PathDelim + 'reports' +
    PathDelim;
{$ELSE}
  Result := ExtractFilePath(ParamStr(0)) + 'reports' + PathDelim;
{$ENDIF}
  Result := report + '.rav';
end;

end.
