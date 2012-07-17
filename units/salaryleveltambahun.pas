unit salaryleveltambahun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tsalaryleveltambahfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    gridtambah: TDBGrid;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure gridtambahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryleveltambahfrm: Tsalaryleveltambahfrm;

implementation

uses dmun,fungsi_merp, salary_level_tambahaddun;
{$R *.dfm}

procedure Tsalaryleveltambahfrm.btntambahClick(Sender: TObject);
begin
  dm.salary_level_tambah.Append;
  aktifkanform(salaryleveltambahaddfrm,Tsalaryleveltambahaddfrm);
end;

procedure Tsalaryleveltambahfrm.btneditClick(Sender: TObject);
begin
  dm.salary_level_tambah.edit;
  aktifkanform(salaryleveltambahaddfrm,Tsalaryleveltambahaddfrm);
end;

procedure Tsalaryleveltambahfrm.SpeedButton1Click(Sender: TObject);
begin
  hapus(dm.salary_level_tambah);
end;

procedure Tsalaryleveltambahfrm.gridtambahKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=vk_return then
 begin
   dm.salary_level_detail_t.Append;
   dm.salary_level_detail_t.FieldByName('sd_kode_item').Value := gridtambah.Fields[0].Value;
   dm.salary_level_detail_t.FieldByName('sd_nama').Value      := gridtambah.Fields[1].Value;
   dm.salary_level_detail_t.FieldByName('sd_amount').Value    := gridtambah.Fields[2].Value;
   dm.salary_level_detail_t.FieldByName('sd_jenis').Value  := 'tambah';
   close;
 end;
end;

end.
