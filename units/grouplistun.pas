unit grouplistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids;

type
  Tgroupfrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  groupfrm: Tgroupfrm;

implementation

uses groupaddun;

{$R *.dfm}

procedure Tgroupfrm.SpeedButton1Click(Sender: TObject);
begin
 if groupaddfrm = nil then
 begin
   application.CreateForm(TgroupAddfrm,groupAddfrm);
   groupAddfrm.Show;
 end else
 begin
   groupAddfrm.Show;
 end;
end;

end.
