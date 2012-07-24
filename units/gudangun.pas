unit gudangun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, baseform, ImgList,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter, DB,  JvXPCore, JvXPButtons, DBCtrls,
  JvDBControls;

type
  Tgudangfrm = class(TfrmBase)
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

uses dmun, fungsi_merp, gudangaddun;
{$R *.dfm}

procedure Tgudangfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.gudang);
end;

procedure Tgudangfrm.SpeedButton1Click(Sender: TObject);
begin
  dm.gudang.Append;
  aktifkanform(gudangaddfrm, TGudangaddfrm);
end;

procedure Tgudangfrm.SpeedButton2Click(Sender: TObject);
begin
  dm.gudang.Edit;
  aktifkanform(gudangaddfrm, TGudangaddfrm);
end;

end.

