unit labarugiun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, RpDefine, RpRave, RpCon, RpConDS,
  RpBase, RpSystem;

type
  Tlabarugifrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    cbbulan: TComboBox;
    cbthn: TComboBox;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    rplr: TRvProject;
    pndptnlr: TRvDataSetConnection;
    biayaoprlr: TRvDataSetConnection;
    biayalr: TRvDataSetConnection;
    pndptnlainlr: TRvDataSetConnection;
    pnglranlainlr: TRvDataSetConnection;
    rslr: TRvSystem;
    coalr: TRvDataSetConnection;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  labarugifrm: Tlabarugifrm;

implementation

uses dmun,fungsi_merp,strutils;
{$R *.dfm}

procedure Tlabarugifrm.FormActivate(Sender: TObject);
var curmonth : integer;
begin
  curmonth := strToInt(AnsiMidStr(dateToStr(date),4,2));
  cbbulan.ItemIndex := curmonth-1;
  cbthn.ItemIndex :=0;
end;

procedure Tlabarugifrm.SpeedButton2Click(Sender: TObject);
begin
   rplr.ProjectFile := 'lr.rav';
   rplr.SelectReport('lr.rav',true);
   rplr.Execute;
end;

procedure Tlabarugifrm.FormCreate(Sender: TObject);
var thn : string;
begin
 thn := RightStr(dateToStr(date),4);
 cbthn.Items.Append(thn);
 cbthn.ItemIndex := 0;
end;

end.
