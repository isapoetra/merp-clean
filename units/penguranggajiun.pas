unit penguranggajiun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tpenguranggajifrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    gridkurang: TDBGrid;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridkurangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  penguranggajifrm: Tpenguranggajifrm;

implementation

uses dmun,fungsi_merp, penguranggajiaddun;
{$R *.dfm}

procedure Tpenguranggajifrm.btntambahClick(Sender: TObject);
begin
  dm.penguranggaji.Append;
  aktifkanform(penguranggajiaddfrm,TPengurangGajiaddfrm);
end;

procedure Tpenguranggajifrm.btneditClick(Sender: TObject);
begin
  dm.penguranggaji.Edit;
  aktifkanform(penguranggajiAddfrm,TPengurangGajiAddfrm);
end;

procedure Tpenguranggajifrm.SpeedButton1Click(Sender: TObject);
begin
  hapus(dm.penguranggaji);
end;

procedure Tpenguranggajifrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.penguranggaji);
end;

procedure Tpenguranggajifrm.gridkurangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
 begin
   dm.salary_level_detail_k.Append;
   dm.salary_level_detail_k.FieldByName('sd_kode_item').Value := gridkurang.Fields[0].Value;
   dm.salary_level_detail_k.FieldByName('sd_nama').Value      := gridkurang.Fields[1].Value;
   dm.salary_level_detail_k.FieldByName('sd_amount').Value    := gridkurang.Fields[2].Value;
   dm.salary_level_detail_k.FieldByName('sd_jenis').Value  := 'kurang';
   close;
 end;
end;

end.
