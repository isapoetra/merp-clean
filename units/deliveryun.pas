unit deliveryun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, Buttons, Grids,
  DBGrids, RpBase, RpSystem, RpRave, RpDefine, RpCon, RpConDS, baseformsingle;

type
  Tdeliveryfrm = class(TfrmBaseSingle)
    pndo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    po: TDBEdit;
    lookcust: TDBLookupComboBox;
    lookpic: TDBLookupComboBox;
    dbtgl: TDBEdit;
    notrans: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    griddo: TDBGrid;
    SpeedButton2: TSpeedButton;
    procedure notransKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure generateDO;
    procedure flagtransaksiJual;
  public
    { Public declarations }
  end;

var
  deliveryfrm: Tdeliveryfrm;

implementation

uses dmun, fungsi_merp, polistun, invoicelistun, strutils;
{$R *.dfm}

procedure Tdeliveryfrm.flagtransaksiJual;
begin
  with dm.jualflag do
  begin
    sql.Text := 'select * from jual where ju_kode=(:kd) limit 1 ';
    params.ParamByName('kd').Value := notrans.Text;
    open;
    edit;
    fieldbyname('ju_barang_sent').Value := 1;
    post;
    applyupdates;
  end;
end;

procedure Tdeliveryfrm.generateDO;
var
  getNo: integer;
  dbpo: string;
  getMonth: integer;
  getMonthdb: integer;
  noPO: string;
  zerofill, getYear: string;
  getyeardb: string;
  finalmonth: string;
begin
  getMonth := strToInt(AnsiMidStr(dateToStr(date), 4, 2));
  // ambil digit bulan dan jadikan integer utk membandingkan bulan saat ini dgn bln pd dbase
  getYear := RightStr(dateToStr(date), 4);
  with dm.delivery do
  begin
    sql.Text := 'SELECT * FROM do ORDER BY do_id DESC LIMIT 1';
    open;
    dbpo := fieldbyname('do_kode').Value;
    getMonthdb := strToInt(AnsiMidStr(fieldbyname('do_kode').Value, 11, 2));
    // ambil digit bulan dari database untuk ditampilkan
    getyeardb := RightStr(dbpo, 4);
    getNo := strToInt(LeftStr(dbpo, 3)) + 1;
  end;

  case Length(intToStr(getNo)) of
    1:
      zerofill := '00';
    2:
      zerofill := '0';
    3:
      zerofill := '';
  end;

  if Length(intToStr(getMonth)) = 1 then
  begin
    finalmonth := '0' + intToStr(getMonth);
  end
  else
  begin
    finalmonth := intToStr(getMonth);
  end;

  if (getYear <> getyeardb) then
  begin
    noPO := '001/SV/DO/01/' + getYear;
  end
  else if (getMonth <> getMonthdb) then
  // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
  begin
    // showmessage('bulan di db tdk sama dgn sistem');

    noPO := '001' + '/' + 'SV/DO/' + finalmonth + '/' + getYear;
    // jika tdk sama maka sistem menganggap bulan baru
  end
  else if (getMonth = getMonthdb) then
  begin
    noPO := zerofill + intToStr(getNo) + '/' + 'SV/DO/' + finalmonth + '/' +
      getYear; // jika sama maka
  end;

  dm.delivery.Append;
  dm.delivery.Append;
  dbtgl.Text := dateToStr(date);
  po.Text := noPO;
  dm.delivery.post;
end;

procedure Tdeliveryfrm.notransKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    isDelivery := 1;
    aktifkanform(invoicelistfrm, TInvoicelistfrm);
  end;
end;

procedure Tdeliveryfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  isDelivery := 0;
end;

procedure Tdeliveryfrm.btntambahClick(Sender: TObject);
begin
  generateDO;
  btnsimpan.Visible := true;
  btnbatal.Visible := true;
  pndo.Enabled := true;
  griddo.Enabled := true;
end;

procedure Tdeliveryfrm.btnsimpanClick(Sender: TObject);
begin
  if messagedlg('Simpan Transaksi?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    btnsimpan.Visible := false;
    btnbatal.Visible := false;
    pndo.Enabled := false;
    griddo.Enabled := false;

    dm.delivery.applyupdates;
    dm.deliverydetail.applyupdates;
    flagtransaksiJual;

  end;
end;

procedure Tdeliveryfrm.btnbatalClick(Sender: TObject);
begin
  if messagedlg('Batalkan Transaksi?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    dm.delivery.CancelUpdates;
    dm.deliverydetail.CancelUpdates;
    btnsimpan.Visible := false;
    btnbatal.Visible := false;
    pndo.Enabled := false;
    griddo.Enabled := false;
  end;
end;

procedure Tdeliveryfrm.SpeedButton2Click(Sender: TObject);
begin
  isDelivery := 1;
  aktifkanformbiasa(invoicelistfrm, TInvoicelistfrm);
end;

procedure Tdeliveryfrm.FormCreate(Sender: TObject);
begin
  inherited;
  aktifkandata(dm.delivery);
  aktifkandata(dm.deliverydetail);
  btntambahClick(nil);
end;

end.
