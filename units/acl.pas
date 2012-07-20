unit acl;
{$I merp.inc}
interface
uses classes, SysUtils;
resourcestring
  accessdenied = 'Access Denied';
type
  TACLPrivs = (aclRead, aclAdd, aclEdit, aclDelete);
  TACLPrivsPriv = set of TACLPrivs;
  TACLItem = class(TCollectionItem)
  private
    FObjectId: string;
    FPrivs: TACLPrivsPriv;
  public
    function isAllow(priv: TACLPrivs): Boolean;
    property ObjectId: string read FObjectId;
    property Privs: TACLPrivsPriv read FPrivs;

  end;
  TACLCollection = class(TCollection)
  public
    constructor Create();
    function getItem(objectId: string): TACLItem; overload;
    function Add(objectId: string; privs: TACLPrivsPriv): TACLItem;
  end;
function authenticate(userName: string; pass: string): Boolean;
function isAuthentificated(): boolean;
function isAllow(objectId: string; privs: TACLPrivs): Boolean;
procedure logout();
implementation
uses dmun, zdataset, ZAbstractDataset;
var
  isAuth: boolean;
  ACLCache: TACLCollection;

function grantRolePriv(objectId: string; privs: TACLPrivs; roleid: integer):
  Boolean;
var
  rw: Integer;
begin
  objectId := LowerCase(objectId);
  dm.conerp.ExecuteDirect('insert into objects (object_id) values(''' + objectId
    + ''')');
  dm.conerp.ExecuteDirect('insert into role_privs values(' + inttostr(roleid) +
    ',''' + objectId + ''',' + IntToStr(Ord(privs)) + ')', rw);
  Result := true;
end;

function isAllow(objectId: string; privs: TACLPrivs): Boolean;
var
  item: TACLItem;
begin
  objectId := LowerCase(objectId);
  if not isAuth then
    Result := false
  else
  begin
    item := ACLCache.GetItem(objectId);
    if assigned(item) then
      Result := item.isAllow(privs)
    else
      Result := false;

  end;
{$IFDEF DEV_MODE}
  grantRolePriv(objectId, privs, 1);
{$ENDIF}
end;

function authenticate(userName: string; pass: string): Boolean;
var
  q: TZQuery;
  privs: TACLPrivsPriv;
begin

  if (not isAuth) then
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
    isAuth := q.RecordCount > 0;
    if isAuth then
    begin
      q.active := false;
      q.SQL.Clear;
      q.Params.Clear;
      q.SQL.Add('select * from vw_userprivs where user_id=:uid');
      q.ParamByName('uid').Value := q.FieldByName('us_id').Value;
      q.Active := true;
      while not q.Eof do
      begin
        privs := [];
        privs := privs +  TACLPrivs. .valueOf(q.FieldByName('object_id').asInteger);
        ACLCache.Add(q.FieldByName('object_id').AsString, privs);
        q.Next;
      end;
    end;
    FreeAndNil(q);
  end;
  Result := isAuth;
end;

function isAuthentificated(): boolean;

begin
  Result := isAuth;
  ACLCache.Add('frm-main', [aclRead]);
end;

procedure logout();
begin
  ACLCache.Clear;
  isAuth := false;
end;
{ TACLCollection }

function TACLCollection.Add(objectId: string;
  privs: TACLPrivsPriv): TACLItem;
begin
  Result := inherited Add() as TACLItem;
  Result.FObjectId := objectId;
  Result.FPrivs := privs;
  //TACLItem.Create(objectId,privs);

end;

constructor TACLCollection.Create;
begin
  inherited Create(TACLItem);
end;

function TACLCollection.getItem(objectId: string): TACLItem;
var
  i: Integer;
  item: TACLItem;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    item := getItem(i) as TACLItem;
    if item.objectId = objectId then
    begin
      Result := item;
      break;
    end;
  end;
end;

{ TACLItem }

function TACLItem.isAllow(priv: TACLPrivs): Boolean;
begin
  Result := false;
end;

initialization
  ACLCache := TACLCollection.Create;
end.

