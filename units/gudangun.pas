unit gudangun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tgudangfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gudangfrm: Tgudangfrm;

implementation

uses dmun,fungsi_merp, gudangaddun;
{$R *.dfm}

procedure Tgudangfrm.FormCreate(Sender: TObject);
begin
   aktifkandata(dm.gudang);
end;

procedure Tgudangfrm.SpeedButton1Click(Sender: TObject);
begin
 dm.gudang.Append;
 aktifkanform(gudangaddfrm,TGudangaddfrm);
end;

procedure Tgudangfrm.SpeedButton2Click(Sender: TObject);
begin
  dm.gudang.Edit;
  aktifkanform(gudangaddfrm,TGudangaddfrm);
end;

end.
