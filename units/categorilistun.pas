unit categorilistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tkategorifrm = class(Tlistrepfrm)
    Label2: TLabel;
    cari: TEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kategorifrm: Tkategorifrm;

implementation

uses kategoriaddun,fungsi_merp, dmun,db;

{$R *.dfm}

procedure Tkategorifrm.SpeedButton4Click(Sender: TObject);
begin
  dm.kategori.Append;
  aktifkanform(kategoriaddfrm,TKategoriaddfrm);

end;

procedure Tkategorifrm.SpeedButton5Click(Sender: TObject);
begin
  //inherited;
 aktifkandata(dm.barang);
 if dm.barang.Locate('br_kategori',dm.kategori.fieldbyname('kg_id').Value,[loCaseInsensitive])=true then
 begin
   messagedlg('Kategori ini tidak bisa dihapus karena dipakai oleh item barang pada master barang!',mtError,[mbOk],0);
   abort;
 end else
 begin
 hapus(dm.kategori);
 end;
end;

procedure Tkategorifrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.kategori.Edit;
  aktifkanform(kategoriaddfrm,TKategoriAddfrm);
end;

procedure Tkategorifrm.cariChange(Sender: TObject);
begin
  inherited;
  dm.kategori.Locate('kg_nama',cari.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure Tkategorifrm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if caripn.Visible = true then
  begin
  cari.SetFocus;
  end;
end;

procedure Tkategorifrm.FormCreate(Sender: TObject);
begin
  inherited;
  aktifkandata(dm.kategori);
end;

end.
