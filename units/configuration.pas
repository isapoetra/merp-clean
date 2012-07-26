unit configuration;

interface

uses inifiles;

type
  TConfiguration = class(TIniFile)
  public
    constructor Create();
    function getConfig(configName: string; defValue: string): string;
    procedure setConfig(configName: string; value: string);
  end;

function getInstance(): TConfiguration;

implementation

uses forms, sysutils;

var
  config: TConfiguration;

  { TConfiguration }
type
  TArrayOfString = array of string;

function SplitString(const aSeparator, aString: string; aMax: Integer = 0)
  : TArrayOfString;
var
  i, strt, cnt: Integer;
  sepLen: Integer;

  procedure AddString(aEnd: Integer = -1);
  var
    endPos: Integer;
  begin
    if (aEnd = -1) then
      endPos := i
    else
      endPos := aEnd + 1;

    if (strt < endPos) then
      result[cnt] := Copy(aString, strt, endPos - strt)
    else
      result[cnt] := '';

    Inc(cnt);
  end;

begin
  if (aString = '') or (aMax < 0) then
  begin
    SetLength(result, 0);
    EXIT;
  end;

  if (aSeparator = '') then
  begin
    SetLength(result, 1);
    result[0] := aString;
    EXIT;
  end;

  sepLen := Length(aSeparator);
  SetLength(result, (Length(aString) div sepLen) + 1);

  i := 1;
  strt := i;
  cnt := 0;
  while (i <= (Length(aString) - sepLen + 1)) do
  begin
    if (aString[i] = aSeparator[1]) then
      if (Copy(aString, i, sepLen) = aSeparator) then
      begin
        AddString;

        if (cnt = aMax) then
        begin
          SetLength(result, cnt);
          EXIT;
        end;

        Inc(i, sepLen - 1);
        strt := i + 1;
      end;

    Inc(i);
  end;

  AddString(Length(aString));

  SetLength(result, cnt);
end;

constructor TConfiguration.Create;
begin
  inherited Create(ChangeFileExt(Application.ExeName, '.ini'));

end;

function getInstance(): TConfiguration;
begin
  if (config = nil) then
    config := TConfiguration.Create;
  result := config;
end;

function TConfiguration.getConfig(configName, defValue: string): string;
var
  config: TArrayOfString;
begin
  config := SplitString('.', configName);
  result := self.ReadString(config[0], config[1], defValue);
end;

procedure TConfiguration.setConfig(configName, value: string);
var
  config: TArrayOfString;
begin
  config := SplitString('.', configName);
  WriteString(config[0], config[1], value);
  UpdateFile;
end;

end.
