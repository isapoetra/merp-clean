unit customerun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, baseform,
  ImgList, JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter, DBCtrls, JvDBControls, DB, JvExStdCtrls,
  JvButton, JvCtrls, JvXPCore, JvXPButtons;

type
  Tcustomerfrm = class(TFrmBase)
    DBGrid1: TDBGrid;
    JvScrollMaxBand3: TJvScrollMaxBand;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure showCP;
    procedure generateKodeCust;
  protected
    procedure doSearch(const text: string); override;
  public
    { Public declarations }
  end;

var
  customerfrm: Tcustomerfrm;

implementation

uses dmun, fungsi_merp, customeraddun, custpicun, strutils;
{$R *.dfm}

procedure Tcustomerfrm.generateKodeCust;
var
  custinc: integer;
begin
  with dm.customeradd do
  begin
    sql.text := 'select * from customer order by cu_id desc limit 1 ';
    open;
    custinc := strToInt(RightStr(fieldbyname('cu_kode').Value, 7)) + 1;

  end;
  dm.customer.append;
  dm.customer.fieldbyname('cu_kode').Value := 'SVC-' +
    format('%7.7d', [custinc]);

end;

procedure Tcustomerfrm.showCP;
begin
  with dm.custpic do
  begin
    sql.text := 'SELECT * FROM custpic WHERE cp_custid = (:kdcust) ';
    params.ParamByName('kdcust').Value :=
      dm.customer.fieldbyname('cu_id').AsString;
    open;
  end;
  aktifkanform(custpicfrm, TCustpicfrm);
end;

procedure Tcustomerfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataSet(dm.customer);
end;

procedure Tcustomerfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dm.customer.append;
  generateKodeCust;
  aktifkanform(CustomerAddfrm, TCustomerAddfrm);
end;

procedure Tcustomerfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  aktifkanform(CustomerAddfrm, TCustomerAddfrm);
  dm.customer.Edit;
end;

procedure Tcustomerfrm.SpeedButton5Click(Sender: TObject);
begin
  // inherited;
  hapus(dm.customer);
end;

procedure Tcustomerfrm.SpeedButton9Click(Sender: TObject);
begin
  // inherited;
  showCP;
end;

procedure Tcustomerfrm.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  showCP;
end;

procedure Tcustomerfrm.doSearch(const text: string);
begin
  inherited;
  // inherited;
  with dm.customer do
  begin
    sql.text :=
      'select * from customer where cu_nama like (:nama) order by cu_nama asc ';
    params.ParamByName('nama').Value := '%' + text + '%';
    open;
  end;
end;

end.
