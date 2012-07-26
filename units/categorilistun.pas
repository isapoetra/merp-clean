unit categorilistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls,
  DB, ImgList, JvXPCore, JvXPButtons, DBCtrls, JvDBControls,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter;

type
  Tkategorifrm = class(Tlistrepfrm)
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure doSearch(const text: string); override;
  public
    { Public declarations }
  end;

var
  kategorifrm: Tkategorifrm;

implementation

uses kategoriaddun, fungsi_merp, dmun;

{$R *.dfm}

procedure Tkategorifrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.kategori.Edit;
  aktifkanform(kategoriaddfrm, TKategoriAddfrm);
end;

procedure Tkategorifrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.kategori);
end;

procedure Tkategorifrm.doSearch(const text: string);
begin
  inherited;
  dm.kategori.Locate('kg_nama', text, [loCaseInsensitive, loPartialKey]);

end;

procedure Tkategorifrm.btnAddClick(Sender: TObject);
begin
  inherited;
  dm.kategori.Append;
  aktifkanform(kategoriaddfrm, TKategoriAddfrm);
end;

procedure Tkategorifrm.btnDeleteClick(Sender: TObject);
begin
  aktifkandata(dm.barang);
  if dm.barang.Locate('br_kategori', dm.kategori.fieldbyname('kg_id').Value,
    [loCaseInsensitive]) = true then
  begin
    messagedlg
      ('Kategori ini tidak bisa dihapus karena dipakai oleh item barang pada master barang!',
      mtError, [mbOk], 0);
    abort;
  end
  else
  begin
    hapus(dm.kategori);
  end;
end;

end.
