unit jasaun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, baseform, ImgList,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter, DB, JvXPCore, JvXPButtons, DBCtrls,
  JvDBControls;

type
  Tjasafrm = class(TFrmBase)
    DBGrid1: TDBGrid;
    procedure btneditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    procedure isiTojual;
  protected
    procedure doSearch(const text: string); override;
  public
    { Public declarations }
  end;

var
  jasafrm: Tjasafrm;

implementation

uses dmun, fungsi_merp, jasaaddun;
{$R *.dfm}

procedure Tjasafrm.isiTojual;
begin
  dm.jualdetail.Append;
  dm.jualdetail.FieldByName('jd_kd_barang').Value :=
    dm.jasa.FieldByName('js_id').Value;
  dm.jualdetail.FieldByName('jd_nama_barang').Value :=
    dm.jasa.FieldByName('js_nama').Value;
  dm.jualdetail.FieldByName('jd_harga_pokok').Value := 0;
  dm.jualdetail.FieldByName('jd_satuan').Value :=
    dm.jasa.FieldByName('js_unit').Value;
  dm.jualdetail.FieldByName('jd_harga_jual').Value :=
    dm.jasa.FieldByName('js_tarif').Value;
  close;
end;

procedure Tjasafrm.btneditClick(Sender: TObject);
begin
  dm.jasa.edit;
  aktifkanform(jasaaddfrm, TJasaAddfrm);
end;

procedure Tjasafrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.jasa);
end;

procedure Tjasafrm.FormActivate(Sender: TObject);
begin
  if isJual = 1 then
  begin
    btnAdd.Visible := false;
    btnEdit.Visible := false;
  end;
end;

procedure Tjasafrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if isJual = 1 then
  begin
    if Key = vk_return then
      isiTojual;
  end; // end isJual
end;

procedure Tjasafrm.doSearch(const text: string);
begin
  inherited;
  with dm.jasa do
  begin
    sql.text := 'select * from jasa where js_nama like (:js) ';
    params.ParamByName('js').Value := '%' + text + '%';
    open;
  end;
end;

procedure Tjasafrm.btnAddClick(Sender: TObject);
begin
  inherited;
  dm.jasa.Append;
  aktifkanform(jasaaddfrm, TJasaAddfrm);
end;

end.
