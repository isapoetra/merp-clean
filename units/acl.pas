unit acl;
{$I merp.inc}

interface

uses classes, SysUtils;

resourcestring
  accessdenied = 'Access Denied';

type
  TACLPrivs = (aclRead = 1, aclAdd = 2, aclEdit = 4, aclDelete = 7,
    aclManage = 127);

  TACLItem = class(TCollectionItem)
  private
    FObjectId: string;
    FPrivs: TACLPrivs;
  public
    function isAllow(priv: TACLPrivs): Boolean;
    property ObjectId: string read FObjectId;
    property Privs: TACLPrivs read FPrivs;

  end;

  TACLCollection = class(TCollection)
  public
    constructor Create();
    function getItem(ObjectId: string): TACLItem; overload;
    function Add(ObjectId: string; Privs: TACLPrivs): TACLItem;
    function contains(ObjectId: string): Boolean;
  end;

  TLogonInfo = class(TObject)
  private
    FUserId: Integer;
    FFirstName: string;
    FUserName: string;
    FPassword: string;
    FLastName: string;
  public
    property UserId: Integer read FUserId;
    property LogonName: string read FUserName;
    property FirstName: string read FFirstName;
    property LastName: string read FLastName;
    property Password: string read FPassword;
  end;

function authenticate(userName: string; pass: string): Boolean;
function isAuthentificated(): Boolean;
function isAllow(ObjectId: string; Privs: TACLPrivs): Boolean;
procedure logout();
function getLogonInfo(): TLogonInfo;

implementation

uses dmun, zdataset, ZAbstractDataset, helper;

var
  logonInfo: TLogonInfo;
  ACLCache: TACLCollection;

function getLogonInfo(): TLogonInfo;
begin
  Result := logonInfo;
end;

function grantRolePriv(ObjectId: string; Privs: TACLPrivs;
  roleid: Integer): Boolean;
var
  rw: Integer;
begin
  ObjectId := LowerCase(ObjectId);
  if not ACLCache.contains(ObjectId) then
  begin
    ACLCache.Add(ObjectId, Privs);
    dm.conerp.ExecuteDirect('insert into objects (object_id) values(''' +
      ObjectId + ''')');
    dm.conerp.ExecuteDirect('insert into role_privs values(' + inttostr(roleid)
      + ',''' + ObjectId + ''',' + inttostr(Ord(Privs)) + ')', rw);
  end;
  Result := true;
end;

function isAllow(ObjectId: string; Privs: TACLPrivs): Boolean;
var
  item: TACLItem;
begin
  ObjectId := LowerCase(ObjectId);
  if not assigned(logonInfo) then
    Result := false
  else
  begin
    item := ACLCache.getItem(ObjectId);
    if assigned(item) then
      Result := item.isAllow(Privs)
    else
      Result := false;

  end;
{$IFDEF DEV_MODE}
  grantRolePriv(ObjectId, aclManage, 1);
{$ENDIF}
end;

function authenticate(userName: string; pass: string): Boolean;
var
  q: TZQuery;
  Privs: TACLPrivs;
  uid: Integer;
begin

  if (not isAuthentificated) then
  begin
    ACLCache.Clear;
    q := TZQuery.Create(nil);
    q.Connection := dm.conerp;
    q.ReadOnly := true;
    q.SQL.Add(
      'select * from user where us_username=:uname and us_password=:pass');
    q.ParamByName('uname').Value := userName;
    q.ParamByName('pass').Value := pass;
    q.Active := true;
    freeAndNil(logonInfo);
    if q.RecordCount > 0 then
    begin
      ACLCache.Add('frm-main', aclRead);
      logonInfo := TLogonInfo.Create;
      with logonInfo do
      begin
        FUserId := q.FieldByName('us_id').AsInteger;
        FFirstName := q.FieldValues['us_firstname'];
        FLastName := q.FieldByName('us_lastname').asString;
        FPassword := q.FieldValues['us_password'];
        FUserName := q.FieldValues['us_username'];
      end;
    end;
    if assigned(logonInfo) then
    begin
      uid := q.FieldByName('us_id').Value;
      q := TZQuery.Create(nil);
      q.Connection := dm.conerp;
      q.ReadOnly := true;
      q.SQL.Add('select * from vw_userprivs where us_id=:uid');
      q.ParamByName('uid').Value := uid;
      q.Active := true;
      while not q.Eof do
      begin
        Privs := TACLPrivs(q.FieldByName('privs').AsInteger);
        ACLCache.Add(q.FieldByName('object_id').asString, Privs);
        q.Next;
      end;
    end;
    freeAndNil(q);
  end;
  Result := isAuthentificated;
end;

function isAuthentificated(): Boolean;
begin
  Result := assigned(logonInfo);

end;

procedure logout();
begin
  ACLCache.Clear;
  freeAndNil(logonInfo);
end;
{ TACLCollection }

function TACLCollection.Add(ObjectId: string; Privs: TACLPrivs): TACLItem;
begin
  Result := inherited Add() as TACLItem;
  Result.FObjectId := ObjectId;
  Result.FPrivs := Privs;
  // TACLItem.Create(objectId,privs);

end;

function TACLCollection.contains(ObjectId: string): Boolean;
begin
  Result := assigned(getItem(ObjectId));
end;

constructor TACLCollection.Create;
begin
  inherited Create(TACLItem);
end;

function TACLCollection.getItem(ObjectId: string): TACLItem;
var
  i: Integer;
  item: TACLItem;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    item := getItem(i) as TACLItem;
    if item.ObjectId = ObjectId then
    begin
      Result := item;
      break;
    end;
  end;
end;

{ TACLItem }

function TACLItem.isAllow(priv: TACLPrivs): Boolean;
begin
  if aclManage = FPrivs then
    Result := true
  else
    Result := IsBitSet(Ord(priv), Ord(FPrivs));
end;

initialization

ACLCache := TACLCollection.Create;

end.
