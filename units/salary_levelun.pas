unit salary_levelun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tsalarylevelfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    gridlevel: TDBGrid;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure gridlevelDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salarylevelfrm: Tsalarylevelfrm;

implementation
uses dmun,fungsi_merp, salaryleveladdun;
{$R *.dfm}

procedure Tsalarylevelfrm.FormActivate(Sender: TObject);
begin
  aktifkandata(dm.salary_level);
  aktifkandata(dm.salary_level_detail_t);
  aktifkandata(dm.salary_level_detail_k);
end;

procedure Tsalarylevelfrm.btntambahClick(Sender: TObject);
begin
  dm.salary_level.Append;
  dm.salary_level_detail_t.Append;
  dm.salary_level_detail_k.Append;
  aktifkanform(salaryLevelAddfrm,TSalaryLevelAddfrm);
end;

procedure Tsalarylevelfrm.btneditClick(Sender: TObject);
begin
  dm.salary_level.edit;
  aktifkanform(salaryLevelAddfrm,TSalaryLevelAddfrm);
end;

procedure Tsalarylevelfrm.SpeedButton1Click(Sender: TObject);
begin

 if messagedlg('Hapus Data Ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin

    with dm.salary_level_detail do
    begin
      //sql.Clear;
      sql.Text := 'delete from salary_level_detail where sd_kode = (:kd) ';
      params.ParamByName('kd').Value := gridlevel.Fields[2].Value; //kd
      execSQL;
    end;
    dm.salary_level.Delete;
    dm.salary_level.ApplyUpdates;
    dm.salary_level_detail.ApplyUpdates;
 end;
end;

procedure Tsalarylevelfrm.gridlevelDblClick(Sender: TObject);
begin
  dm.salary_level.Edit;
  aktifkanform(salaryleveladdfrm,TSalaryLevelAddfrm);
end;

end.
