unit polistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, ImgList, baseform,
  Data.DB,
  JvXPCore, JvXPButtons, Vcl.DBCtrls, JvDBControls, JvExControls, JvScrollMax,
  JvExExtCtrls, JvExtComponent, JvNetscapeSplitter, RpBase, RpSystem,
  RpRave, RpDefine, RpCon, RpConDS;

type
  Tpolistfrm = class(TFrmBase)
    caripn: TPanel;
    Label2: TLabel;
    cari: TEdit;
    gridpo: TDBGrid;
    popop: TPopupMenu;
    LihatDetail1: TMenuItem;
    N1: TMenuItem;
    CetakDeliveryOrderDO1: TMenuItem;
    imagelist: TImageList;
    N2: TMenuItem;
    HapusData1: TMenuItem;
    lookfilter: TComboBox;
    Label3: TLabel;
    rpPo: TRvProject;
    procedure cariChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure popopPopup(Sender: TObject);
    procedure gridpoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CetakDeliveryOrderDO1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LihatDetail1Click(Sender: TObject);
    procedure HapusData1Click(Sender: TObject);
    procedure lookfilterClick(Sender: TObject);
    procedure rdpo_customerEOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
  private
    { Private declarations }
    procedure Purchasingdetail;
    procedure InventoryDetail;
    procedure filterSemua;
    procedure filterLangsung;
    procedure filterVendor;
  public
    { Public declarations }
  end;

var
  polistfrm: Tpolistfrm;

implementation

uses dmun, fungsi_merp, gudangpickun, jatuhtempoun, orderdetailun;
{$R *.dfm}

procedure Tpolistfrm.filterSemua;
begin
  with dm.polist do
  begin
    sql.Text := 'select * from beli ORDER BY be_id DESC ';
    open;
  end;
end;

procedure Tpolistfrm.filterLangsung;
begin
  with dm.polist do
  begin
    sql.Text := 'select * from beli where be_islangsung=1 ORDER BY be_id DESC ';
    open;
  end;
end;

procedure Tpolistfrm.filterVendor;
begin
  with dm.polist do
  begin
    sql.Text := 'select * from beli where be_islangsung=0 ORDER BY be_id DESC ';
    open;
  end;
end;

procedure Tpolistfrm.Purchasingdetail;
begin

  with dm.beli do
  begin
    sql.Clear;
    sql.Text :=
      'select * from beli where be_kode like (:kode) order by be_id desc ';
    params.ParamByName('kode').Value := dm.polist.fieldbyname('be_kode').Value;
    open;
  end;

  with dm.footnote do
  begin
    sql.Clear;
    sql.Text := 'select * from foot_note where fn_supplier_id = (:sup_id) ';
    params.ParamByName('sup_id').AsString :=
      dm.beli.fieldbyname('be_supplier_id').AsString;
    open;
  end;

  rpPo.ProjectFile := 'po_list.rav';
  rpPo.SelectReport('po_list.rav', true);
  rpPo.Execute;
end;

procedure Tpolistfrm.rdpo_customerEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
  inherited;
  //
end;

procedure Tpolistfrm.InventoryDetail;
begin
  with dm.orderdetail do
  begin

    sql.Text := 'select * from belidetail ' +
      'where bd_kode = (:bdkd) order by bd_id DESC ';
    params.ParamByName('bdkd').Value := dm.polist.fieldbyname('be_kode').Value;
    open;
  end;
  if dm.polist.fieldbyname('be_post').Value = 1 then
  begin
    isPost := 1;
  end
  else
  begin
    isPost := 0;
  end;
  aktifkanform(detailorderfrm, Tdetailorderfrm);
end;

procedure Tpolistfrm.cariChange(Sender: TObject);
begin
  with dm.polist do
  begin
    sql.Text := 'select * from beli ' +
      'WHERE be_kode LIKE (:kd) order by be_id desc  LIMIT 100 ';
    params.ParamByName('kd').Value := cari.Text + '%';
    open;
  end;
end;

procedure Tpolistfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.polist);
  ShowSearch := false;
  // aktifkandata(dm.
end;

procedure Tpolistfrm.FormActivate(Sender: TObject);
begin
  dm.polist.Refresh;
end;

procedure Tpolistfrm.popopPopup(Sender: TObject);
begin
  { if dm.polist.FieldByName('be_post').Value = 1 then
    begin
    postin.Enabled := false;
    end else
    begin
    postin.Enabled := true;
    end; }
end;

procedure Tpolistfrm.gridpoDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;

  imgIndex: Integer;
begin
  fixRect := Rect;

  // customizing the 'LastName' field
  if Column.Field = dm.polist.fieldbyname('be_kode') then
  begin
    // adding some logic to grab the required image
    if dm.polist.fieldbyname('be_post').Value = 1 then
    begin
      imgIndex := 1;
    end
    else
    begin
      imgIndex := 0;
    end;
    bitmap := TBitmap.Create;
    try
      // grab the image from the ImageList
      // (using the "Salary" field's value)
      imagelist.GetBitmap(imgIndex, bitmap);
      // Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      // draw the bitmap
      gridpo.Canvas.StretchDraw(fixRect, bitmap);
    finally
      bitmap.Free;
    end;

    // reset the output rectangle,
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;

  // draw default text (fixed position)
  gridpo.DefaultDrawColumnCell(fixRect, DataCol, Column, State);

end;

procedure Tpolistfrm.CetakDeliveryOrderDO1Click(Sender: TObject);
begin
  aktifkanform(jatuhtempofrm, Tjatuhtempofrm);
end;

procedure Tpolistfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  isInventory := 0;
end;

procedure Tpolistfrm.LihatDetail1Click(Sender: TObject);
begin
  if isInventory = 1 then
  begin
    InventoryDetail;
  end
  else
  begin
    Purchasingdetail;
  end;
end;

procedure Tpolistfrm.HapusData1Click(Sender: TObject);
begin
  if messagedlg('Anda Yakin akan menghapus data ini?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    // hapus transaksi di tabel general ledger
    aktifkandata(dm.gl_hapus);
    if dm.gl_hapus.Locate('gl_ref', dm.polist.fieldbyname('be_kode').Value,
      [loCaseInsensitive]) = true then
    begin
      with dm.gl_hapus do
      begin
        sql.Text := 'select * from general_ledger where gl_ref = (:ref) ';
        params.ParamByName('ref').Value :=
          dm.polist.fieldbyname('be_kode').Value;
        open;
        last;
        while not bof do
        begin
          delete;
          previous;
        end;
        applyupdates;
      end;
    end;

    with dm.belidetailhapus do
    begin
      sql.Text := 'select * from belidetail where bd_kode = (:kd) ';
      params.ParamByName('kd').Value := dm.polist.fieldbyname('be_kode').Value;
      open;

      last;
      while not bof do
      begin
        aktifkandata(dm.inventory);
        if dm.inventory.Locate('in_kd_barang', fieldbyname('bd_kd_barang')
          .Value, [loCaseInsensitive]) = true then
        begin
          // showmessage('belidetail : kode qtmu!');
          dm.inventory.Edit;
          dm.inventory.fieldbyname('in_stock').Value :=
            dm.inventory.fieldbyname('in_stock').Value -
            fieldbyname('bd_qty').Value;
          dm.inventory.Post;
          dm.inventory.applyupdates;
        end; // end if dm
        delete;
        previous;
      end; // end of bof
    end;

    dm.polist.delete;
    dm.polist.applyupdates;
    dm.belidetail.Refresh;
  end;
end;

procedure Tpolistfrm.lookfilterClick(Sender: TObject);
begin
  case lookfilter.ItemIndex of
    0:
      filterSemua;
    1:
      filterLangsung;
    2:
      filterVendor;
  end;
end;

end.
