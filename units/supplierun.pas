unit supplierun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tsupplierfrm = class(Tlistrepfrm)
    cari: TEdit;
    Label2: TLabel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure cariChange(Sender: TObject);
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
  public
    { Public declarations }
  end;

var
  supplierfrm: Tsupplierfrm;

implementation

uses dmun,db,fungsi_merp, supplieraddun, supplierpicun, footnoteun;

{$R *.dfm}

procedure Tsupplierfrm.showPIC;
begin
   with dm.supplierpic do
  begin
    sql.Text := 'SELECT * FROM supplier_pic WHERE sp_supplier = '+dm.supplier.fieldbyname('sp_id').AsString;
    open;
  end;
  aktifkanform(supplierPicfrm,TsupplierPicfrm);
end;

procedure Tsupplierfrm.cariChange(Sender: TObject);
begin
  //inherited;
  with dm.supplier do
  begin
   sql.Text := 'select * from supplier where sp_name like (:sp) order by sp_id ASC ';
   params.ParamByName('sp').Value := '%'+cari.Text+'%';
   open;
  end;
end;

procedure Tsupplierfrm.FormCreate(Sender: TObject);
begin
  //inherited;
  aktifkandata(dm.supplier);
end;

procedure Tsupplierfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dm.supplier.Append;
  aktifkanform(supplieraddfrm,TSupplieraddfrm);
end;

procedure Tsupplierfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.supplier.Edit;
  aktifkanform(supplierAddFrm,TSupplierAddFrm);
end;

procedure Tsupplierfrm.SpeedButton5Click(Sender: TObject);
begin
  //inherited;
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
  //inherited;
   showPIC;    
end;

procedure Tsupplierfrm.SpeedButton10Click(Sender: TObject);
begin
  //inherited;
   with dm.footnote do
   begin
     sql.Text := 'select * from foot_note where fn_supplier_id like (:id) ';
     params.ParamByName('id').Value := dm.supplier.fieldbyname('sp_id').AsString;
     open;
   end;
   aktifkanform(footnotefrm,TFootnotefrm);
end;

end.
