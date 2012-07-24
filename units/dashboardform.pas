unit dashboardform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DbChart,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components;

type
  TfrmDashboard = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lblUser: TLabel;
    GroupBox1: TGroupBox;
    BindingsList1: TBindingsList;
    Chart2: TChart;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDashboard: TfrmDashboard;

implementation

uses acl;
{$R *.dfm}

procedure TfrmDashboard.FormCreate(Sender: TObject);
begin
  lblUser.Caption := acl.getLogonInfo().FirstName + ' ' +
    acl.getLogonInfo().LastName;
end;

procedure TfrmDashboard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
