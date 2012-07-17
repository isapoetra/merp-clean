unit gudangpickun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  Tgudangpickfrm = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    lookgudang: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure postToInventory;
  public
    { Public declarations }
  end;

var
  gudangpickfrm: Tgudangpickfrm;

implementation

uses dmun,fungsi_merp,db;
{$R *.dfm}

procedure Tgudangpickfrm.postToInventory;
begin
  
  with dm.polist do
  begin
    edit;
    fieldbyname('be_post').Value := 1;
    post;
    applyupdates;
  end;

  // kelompokkan data pembelian berdasarkan no po
  with dm.bd_inventory do
  begin
    sql.Text := 'select * from belidetail '+
    'where bd_kode = (:k) ';
    params.ParamByName('k').Value := dm.polist.fieldbyname('be_kode').Value;
    open;
    first;
    while not eof do
    begin
      //cari di inventory apakah data barang sudah ada atau belum
      aktifkandata(dm.inventory_post);
      if dm.inventory_post.Locate('in_kd_barang',fieldbyname('bd_kd_barang').Value,[loCaseInsensitive]) = true then
      begin
        // kalau sudah ada di edit;
       // showmessage('ada');
        dm.inventory_post.Edit;
        dm.inventory_post.FieldByName('in_stock').Value     :=  dm.inventory_post.FieldByName('in_stock').Value+fieldbyname('bd_qty').Value;
        dm.inventory_post.FieldByName('in_harga').Value     := fieldbyname('bd_harga').Value;
        dm.inventory_post.Post;
        dm.inventory_post.ApplyUpdates;
      end else
      begin
        dm.inventory_post.Append;
        dm.inventory_post.FieldByName('in_kd_barang').Value := fieldbyname('bd_kd_barang').Value;
        dm.inventory_post.FieldByName('in_kd_gudang').Value := lookgudang.KeyValue;
        dm.inventory_post.FieldByName('in_stock').Value     := fieldbyname('bd_qty').Value;
        dm.inventory_post.FieldByName('in_harga').Value     := fieldbyname('bd_harga').Value;
        dm.inventory_post.Post;
        dm.inventory_post.ApplyUpdates;
      end; // end of inventory
      next;
    end; // end of while
    dm.inventory.Refresh;
    showmessage('posting selesai...');
    exit;
  end;
end;

procedure Tgudangpickfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.gudang);
  aktifkandata(dm.inventory);
end;

procedure Tgudangpickfrm.SpeedButton1Click(Sender: TObject);
begin
  postToInventory;
  close;
end;

end.
