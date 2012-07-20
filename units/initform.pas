unit initform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, JvWizard, JvExControls,
  StdCtrls, JvExStdCtrls, JvEdit, JvValidators, JvComponentBase,
  JvErrorIndicator;

type
  TfrmInit = class(TForm)
    JvWizard1: TJvWizard;
    JvWizardWelcomePage1: TJvWizardWelcomePage;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    JvWizardInteriorPage2: TJvWizardInteriorPage;
    dbtest: TZConnection;
    cbProtocol: TComboBox;
    txtHost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    txtName: TEdit;
    txtPass: TEdit;
    Password: TLabel;
    Label6: TLabel;
    cbCatalog: TComboBox;
    Label5: TLabel;
    JvWizardInteriorPage3: TJvWizardInteriorPage;
    btnTest: TButton;
    procedure JvWizardInteriorPage1EnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
    procedure cbProtocolChange(Sender: TObject);
    procedure updateDBInfo(Sender: TObject);
    procedure JvWizardInteriorPage1NextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInit: TfrmInit;

implementation
uses helper, configuration;
{$R *.dfm}

procedure TfrmInit.JvWizardInteriorPage1EnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
var
  list: TStrings;
begin
  cbProtocol.Clear;
  list := TStringList.Create;
  dbtest.GetProtocolNames(list);
  cbProtocol.Items := list;
  cbProtocol.Text := helper.getConfig('db.protocol', 'mysql-5');
  txtHost.Text := helper.getConfig('db.host', 'localhost');
  txtName.Text := helper.getConfig('db.user', 'root');
  txtPass.Text := helper.getConfig('db.password', '');
  cbCatalog.Text := helper.getConfig('db.database', 'merp');
end;

procedure TfrmInit.cbProtocolChange(Sender: TObject);
begin
  dbtest.Protocol := cbProtocol.Text;
end;

procedure TfrmInit.updateDBInfo(Sender: TObject);
begin
  dbTest.Connected := false;
  dbtest.Protocol := cbProtocol.Text;
  dbtest.HostName := txtHost.Text;
  dbtest.Password := txtPass.Text;
  dbtest.User := txtName.Text;
  dbtest.Catalog := cbCatalog.Text;

end;

procedure TfrmInit.JvWizardInteriorPage1NextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  updateDBInfo(nil);
  dbtest.Connect;
  if (dbtest.Connected) then
    with (configuration.getInstance()) do
    begin
      setConfig('db.protocol', cbProtocol.Text);
      setConfig('db.host', txtHost.Text);
      setConfig('db.user', txtName.Text);
      setConfig('db.password', txtPass.Text);
      setConfig('db.database', cbCatalog.Text);
    end;
  Stop := dbtest.Connected = false;
end;

procedure TfrmInit.btnTestClick(Sender: TObject);
begin
  updateDBInfo(nil);
  dbtest.Connect;
end;

end.

