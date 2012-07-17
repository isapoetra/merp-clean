unit tagihanun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Menus, ImgList;

type
  Ttagihanfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    lookcust: TDBLookupComboBox;
    cbfilter: TCheckBox;
    ptagihan: TPopupMenu;
    CetakInvoice1: TMenuItem;
    N1: TMenuItem;
    Pembayaran1: TMenuItem;
    N2: TMenuItem;
    RefreshData1: TMenuItem;
    ImageList1: TImageList;
    gf: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    UbahTanggalInvoice1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure lookcustClick(Sender: TObject);
    procedure CetakInvoice1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Pembayaran1Click(Sender: TObject);
    procedure gfClick(Sender: TObject);
    procedure UbahTanggalInvoice1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ubahTglCepat;
  public
    { Public declarations }
  end;

var
  tagihanfrm: Ttagihanfrm;

implementation
uses dmun,fungsi_merp, fakturdaninvoiceun, lunaspiutangun, pajakaddun,
  tanggalubahun,strutils;
{$R *.dfm}

procedure Ttagihanfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.tagihanview);
  aktifkandata(dm.customer);
end;

procedure Ttagihanfrm.ubahTglCepat;
var tempnomor : string;
begin
  
  with dm.jualcari do
  begin
    sql.Text := 'select * from jual where ju_kode = (:kd) ';
    params.ParamByName('kd').Value := dm.tagihanview.fieldbyname('in_kode_jual').value;
    open;   
  end;

   with dm.tagihanview do
   begin
    tempnomor := leftStr(fieldbyname('in_kode').Value,10);  // ambil sebelas digit yang tidak diubah oleh perubahan bulan dan tahun
    edit;
    fieldbyname('in_date').Value := dm.jualcari.fieldbyname('ju_tgl').Value;
    fieldbyname('in_kode').Value := tempnomor+RightStr(dateToStr(dm.jualcari.fieldbyname('ju_tgl').Value),7);
    post;
    applyupdates;
   end;

end;


procedure Ttagihanfrm.cariChange(Sender: TObject);
begin
if cbfilter.Checked = true then
begin
   with dm.tagihanview do
   begin
    sql.Text := 'select * from invoice where in_kode like (:kode) and '+
    'in_cust_kode like (:cust) order by in_id desc ';
    params.ParamByName('kode').Value := '%'+cari.Text+'%';
    params.ParamByname('cust').Value := lookcust.KeyValue;
    open;
  end; // end of tagihanview
end else
begin
   with dm.tagihanview do
   begin
     sql.Text := 'select * from invoice where in_kode like (:kode) order by in_id desc ';
     params.ParamByName('kode').Value := '%'+cari.Text+'%';
    open;
  end; // end of tagihanview
end;


end;

procedure Ttagihanfrm.lookcustClick(Sender: TObject);
begin
if cbfilter.Checked = true then
begin
   with dm.tagihanview do
   begin
    sql.Text := 'select * from invoice where in_cust_kode like (:kode) order by in_id desc ';
    params.ParamByName('kode').Value := lookcust.KeyValue;
    open;
  end; // end of tagihanview
end; //enf of cbfilter
end;

procedure Ttagihanfrm.CetakInvoice1Click(Sender: TObject);
begin
//  noinvoice := dm.tagihanview.fieldbyname('in_kode').AsString; // variabel global dari fungsi_merp unit
 // notransaksi := dm.tagihanview.fieldbyname('in_kode_jual').AsString;
  aktifkanform(invoicprintfrm,TInvoicprintfrm);
end;

procedure Ttagihanfrm.RefreshData1Click(Sender: TObject);
begin
 dm.tagihanview.Refresh;
end;

procedure Ttagihanfrm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 var
   grid : TDBGrid;
   row : integer;
    bitmap : TBitmap;
  FixRect : TRect;
  bmpWidth : integer;   
  imgIndex : integer;
 begin
 // membuat row zig zag
   fixRect := Rect;
   grid := sender as TDBGrid;
 
   row := grid.DataSource.DataSet.RecNo;

   if Odd(row) then
     grid.Canvas.Brush.Color := $00E2FEFD
     
   else
     grid.Canvas.Brush.Color := clWhite;

  // membuat setting selected row

    if  grid.Focused then
    begin
      if (gdSelected in State) then
      begin
        with grid.Canvas do
        begin
          Brush.Color := clHighlight;
          Font.Style := Font.Style + [fsBold];
          Font.Color := clHighlightText;
        end;
      end;
    end;
            
  // sisipkan image untuk notifikasi biar lebih jelaaas
  if (column.Field=dm.tagihanview.FieldByName('in_kode_jual')) then
  begin
    if dm.tagihanview.FieldByName('in_paid').Value <> 1 then
    begin
      imgIndex := 0
    end else
    begin
     imgIndex :=1;
    end;

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList 
      //(using the "Salary" field's value)
      ImageList1.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      FixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      grid.Canvas.StretchDraw(FixRect,bitmap);
    finally
      bitmap.Free;
    end;  // end of try

    // reset the output rectangle, 
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;   // end of columnfield

  // sisipkan image untuk notifikasi biar lebih jelaaas
  if (column.Field=dm.tagihanview.FieldByName('in_tagihan_tax')) then
  begin
    if dm.tagihanview.FieldByName('in_fakturpajak').Value = 1 then
    begin
      imgIndex := 2
    end else
    begin
     imgIndex :=3;
    end; 

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList 
      //(using the "Salary" field's value)
      ImageList1.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      FixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      grid.Canvas.StretchDraw(FixRect,bitmap);
    finally
      bitmap.Free;
    end;  // end of try

    // reset the output rectangle, 
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;   // end of columnfield
 
   grid.DefaultDrawColumnCell(FixRect, DataCol, Column, State) ;

 end;

procedure Ttagihanfrm.Pembayaran1Click(Sender: TObject);
begin
 bayarpiutang := dm.tagihanview.fieldbyname('in_amount').Value+dm.tagihanview.fieldbyname('in_tax').Value;
 aktifkanform(lunasPiutangfrm,TLunasPiutangfrm);
end;

procedure Ttagihanfrm.gfClick(Sender: TObject);
begin
 if dm.tagihanview.FieldByName('in_fakturpajak').Value = 1 then
 begin
   messagedlg('Faktur Pajak untuk Invoice ini sudah di Generate!',mtWarning,[mbOk],0);
   abort;
 end;

 isViewfromJual :=1;
 generatefakturpajak;
 aktifkandata(dm.pajakinsert);
 dm.pajakinsert.Append;
 
 dm.pajakinsert.FieldByName('fp_npwp').Value      := dm.tagihanview.fieldbyname('custnpwp').AsString;
 dm.pajakinsert.FieldByName('fp_nama_cust').Value := dm.tagihanview.fieldbyname('customer').AsString;
 dm.pajakinsert.FieldByName('fp_dpp').Value       := dm.tagihanview.fieldbyname('in_tagihan').AsString;
 dm.pajakinsert.FieldByName('fp_ppn').Value       := dm.tagihanview.fieldbyname('in_tagihan_tax').Value;
 dm.pajakinsert.FieldByName('fp_kode').Value      := gNofaktur;
 dm.pajakinsert.FieldByName('fp_cust_kode').Value := dm.tagihanview.fieldbyname('in_cust_kode').Value;
 dm.pajakinsert.FieldByName('fp_ref').Value       := dm.tagihanview.fieldbyname('in_kode_jual').Value;
 dm.pajakinsert.FieldByName('fp_total_transaksi').Value    := dm.tagihanview.fieldbyname('in_amount').Value;
 dm.pajakinsert.FieldByName('fp_balance').Value    := dm.tagihanview.fieldbyname('in_balance').Value;
 aktifkanform(pajakAddfrm,TPajakAddfrm);
end;

procedure Ttagihanfrm.UbahTanggalInvoice1Click(Sender: TObject);
begin
 aktifkanform(tanggalubahfrm,Ttanggalubahfrm);
end;

procedure Ttagihanfrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_f3 then ubahTglcepat;
end;

end.
