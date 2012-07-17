unit listrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tlistrepfrm = class(TForm)
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btncari: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    caripn: TPanel;
    SpeedButton7: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listrepfrm: Tlistrepfrm;

implementation

{$R *.dfm}

procedure Tlistrepfrm.SpeedButton7Click(Sender: TObject);
begin
  caripn.Visible := false;
end;

procedure Tlistrepfrm.SpeedButton6Click(Sender: TObject);
begin
  if caripn.Visible = false then
  begin
    caripn.Visible := true;
  end else
  begin
    caripn.Visible := false;
  end;
end;

procedure Tlistrepfrm.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('Hapus Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  end;
end;

end.
