unit karyawanun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tkaryawanfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    SpeedButton1: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  karyawanfrm: Tkaryawanfrm;

implementation

uses dmun,fungsi_merp, karyawanaddun;
{$R *.dfm}

procedure Tkaryawanfrm.FormActivate(Sender: TObject);
begin
  aktifkandata(dm.karyawan);
  aktifkandata(dm.karyawan_detail);
end;

procedure Tkaryawanfrm.btntambahClick(Sender: TObject);
begin
 dm.karyawan.Append;
 isTambahKaryawan :=1;
 aktifkanform(karyawanaddfrm,TKaryawanaddfrm);

end;

procedure Tkaryawanfrm.cariChange(Sender: TObject);
begin
  with dm.karyawan do
  begin
    sql.Text := 'select * from karyawan where kr_firstname like (:nama) or kr_lastname like (:nama) '+
    ' order by kr_id desc ';
    params.ParamByName('nama').Value := '%'+cari.Text+'%';
    open;
  end;
end;

procedure Tkaryawanfrm.SpeedButton1Click(Sender: TObject);
begin
 cari.Clear;
end;

procedure Tkaryawanfrm.btneditClick(Sender: TObject);
begin
 dm.karyawan.edit;
 dm.karyawan_detail.Edit;
 aktifkanform(karyawanaddfrm,TKaryawanAddfrm);
end;

procedure Tkaryawanfrm.SpeedButton2Click(Sender: TObject);
begin
 hapus(dm.karyawan);
end;

procedure Tkaryawanfrm.DBGrid1DblClick(Sender: TObject);
begin
  dm.karyawan.Edit;
  dm.karyawan_detail.Edit;
  aktifkanform(karyawanAddfrm,TKaryawanAddfrm);
end;

end.
