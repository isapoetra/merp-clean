unit salary_level_tambahaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tsalaryleveltambahaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    kd: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryleveltambahaddfrm: Tsalaryleveltambahaddfrm;

implementation
uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tsalaryleveltambahaddfrm.btnsimpanClick(Sender: TObject);
begin
    simpan(dm.salary_level_tambah);
    btnsimpan.Visible := false;
    btnbatal.Visible := false;
end;

procedure Tsalaryleveltambahaddfrm.btnbatalClick(Sender: TObject);
begin
   batal(dm.salary_level_tambah);
    btnsimpan.Visible := false;
    btnbatal.Visible := false;
end;

procedure Tsalaryleveltambahaddfrm.btntambahClick(Sender: TObject);
begin
   dm.salary_level_tambah.Append;
    btnsimpan.Visible := true;
    btnbatal.Visible :=  true;
end;

end.
