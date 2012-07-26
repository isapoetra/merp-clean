unit optionsform;

interface

{$I merp.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Themes, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls;

type
  TfrmOptions = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    PageControl1: TPageControl;
    Database: TTabSheet;
    TabSheet4: TTabSheet;
    cbStyle: TComboBox;
    btnLoad: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cbStyleChange(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
  private
    { Private declarations }
    fdefaultStyleName: String;
  public
    { Public declarations }
  end;

var
  frmOptions: TfrmOptions;

implementation

{$R *.dfm}

procedure TfrmOptions.btnLoadClick(Sender: TObject);
begin
{$IFNDEF ENTERPRISE}
  MessageDlg('Enterprise only', mtError, [mbOK], -1);
{$ENDIF}
end;

procedure TfrmOptions.cbStyleChange(Sender: TObject);
begin
  if Assigned(TStyleManager.ActiveStyle) and
    (TStyleManager.ActiveStyle.Name <> 'Windows') then
  begin
    TStyleManager.TrySetStyle(cbStyle.Text);
  end
  else
  begin
    TStyleManager.TrySetStyle(fdefaultStyleName);
  end;
end;

procedure TfrmOptions.FormCreate(Sender: TObject);
var
  s: String;
begin
  if Assigned(TStyleManager.ActiveStyle) then
    fdefaultStyleName := TStyleManager.ActiveStyle.Name;
  for s in TStyleManager.StyleNames do
    cbStyle.Items.Add(s);
  cbStyle.Text := fdefaultStyleName;
end;

end.
