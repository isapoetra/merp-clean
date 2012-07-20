unit initdbform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, JvWizard, JvExControls,
  StdCtrls, JvExStdCtrls, JvEdit, JvValidators, JvComponentBase,
  JvErrorIndicator;

type
  TfrmInstall = class(TForm)
    JvWizard1: TJvWizard;
    JvWizardWelcomePage1: TJvWizardWelcomePage;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    JvWizardInteriorPage2: TJvWizardInteriorPage;
    dbtest: TZConnection;
    JvErrorIndicator1: TJvErrorIndicator;
    JvValidationSummary1: TJvValidationSummary;
    JvValidators1: TJvValidators;
    JvEdit1: TJvEdit;
    cbProtocol: TComboBox;
    procedure JvWizardInteriorPage1EnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstall: TfrmInstall;

implementation

{$R *.dfm}

procedure TfrmInstall.JvWizardInteriorPage1EnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
var list : TStrings;
begin
  cbProtocol.Clear;
  list:=TStrings.Create;
  dbtest.GetProtocolNames(list);
  cbProtocol.Items := list;
end;

end.
