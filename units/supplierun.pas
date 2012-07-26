unit supplierun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, baseform,
  ImgList, JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter, DB, JvXPCore, JvXPButtons, DBCtrls,
  JvDBControls;

type
  Tsupplierfrm = class(TFrmBase)
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
    procedure showPIC;
  protected
    procedure doSearch(const text: string); override;
  public
    { Public declarations }
  end;

var
  supplierfrm: Tsupplierfrm;

implementation

uses dmun, fungsi_merp, supplieraddun, supplierpicun, footnoteun;

{$R *.dfm}

procedure Tsupplierfrm.showPIC;
begin
  with dm.supplierpic do
  begin
    sql.text := 'SELECT * FROM supplier_pic WHERE sp_supplier = ' +
      dm.supplier.fieldbyname('sp_id').AsString;
    open;
  end;
  aktifkanform(supplierPicfrm, TsupplierPicfrm);
end;

procedure Tsupplierfrm.doSearch(const text: string);
begin
  // inherited;
  with dm.supplier do
  begin
    sql.text :=
      'select * from supplier where sp_name like (:sp) order by sp_id ASC ';
    params.ParamByName('sp').Value := '%' + text + '%';
    open;
  end;
end;

procedure Tsupplierfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataSet(dm.supplier);
end;

procedure Tsupplierfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dm.supplier.Append;
  aktifkanform(supplieraddfrm, TSupplieraddfrm);
end;

procedure Tsupplierfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.supplier.Edit;
  aktifkanform(supplieraddfrm, TSupplieraddfrm);
end;

procedure Tsupplierfrm.SpeedButton5Click(Sender: TObject);
begin
  // inherited;
  hapus(dm.supplier);
end;

procedure Tsupplierfrm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  showPIC;
end;

procedure Tsupplierfrm.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  showPIC;
end;

procedure Tsupplierfrm.SpeedButton9Click(Sender: TObject);
begin
  // inherited;
  showPIC;
end;

procedure Tsupplierfrm.SpeedButton10Click(Sender: TObject);
begin
  // inherited;
  with dm.footnote do
  begin
    sql.text := 'select * from foot_note where fn_supplier_id like (:id) ';
    params.ParamByName('id').Value := dm.supplier.fieldbyname('sp_id').AsString;
    open;
  end;
  aktifkanform(footnotefrm, TFootnotefrm);
end;

end.
