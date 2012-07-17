unit pajakaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, ComCtrls, DBCtrls, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TpajakAddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnsimpan: TBitBtn;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tgldok: TDateTimePicker;
    Shape1: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnbatal: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    npwp: TDBEdit;
    cust: TDBEdit;
    nodokumen: TDBEdit;
    dpp: TDBEdit;
    ppn: TDBEdit;
    ppnbm: TDBEdit;
    cbcetak: TCheckBox;
    btntambah: TBitBtn;
    rpPajak: TRvProject;
    rspajak: TRvSystem;
    rdpajak: TRvDataSetConnection;
    rdpajakdetail: TRvDataSetConnection;
    rdwp: TRvDataSetConnection;
    rdbarangpajak: TRvDataSetConnection;
    custkode: TDBEdit;
    ref: TDBEdit;
    btncetak: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure exdppKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dppKeyPress(Sender: TObject; var Key: Char);
    procedure dppExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure npwpChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncetakClick(Sender: TObject);
  private
    { Private declarations }
    procedure simpanFaktur;
  public
    { Public declarations }
  end;

var
  pajakAddfrm: TpajakAddfrm;
  pnofaktur : string;

implementation

uses dmun,fungsi_merp, wpviewun,db,strutils;
{$R *.dfm}

procedure  Tpajakaddfrm.simpanFaktur;
var kodefaktur : string;
   tgl : string;
begin
   with dm.fakturpajakcari do
   begin
     sql.Text := 'select * from fakturpajak where fp_kode = (:kdfp) limit 1 ';
     params.ParamByName('kdfp').Value := nodokumen.Text;
     open;
      if isEmpty=false then
      begin
        messagedlg('Faktur Pajak sudah ada! Mohon pilih no faktur yang lain',mtError,[mbOk],0);
        abort;
      end;
   end;

   //simpan ke dalam tabel fakturpajak
   with dm.pajakinsert do
   begin
    FieldByName('fp_date').Value      := tgldok.Date;
    Post;
    ApplyUpdates;     
   end; // end of pajakinsert
  
  //simpan ke tabel fakturpajakdetail
  with dm.jualdetailpajak do
  begin
    sql.Text := 'select * from jualdetail where jd_kode = (:jdkd) ';
    params.ParamByName('jdkd').Value := dm.tagihanview.fieldbyname('in_kode_jual').Value;
    open;

   { if isEmpty = false then
    begin
      showmessage('jual detail ditemukan!');
    end else
    begin
      showmessage('kode tidak ditemukan di jual detail');
    end;}

    first;
    while not eof do
    begin
      aktifkandata(dm.fakturpajakdetail);
      dm.fakturpajakdetail.Append;
      dm.fakturpajakdetail.FieldByName('fd_kode').Value        := nodokumen.Text;
      dm.fakturpajakdetail.FieldByName('fd_kd_barang').Value   := fieldbyname('jd_kd_barang').Value;
      dm.fakturpajakdetail.FieldByName('fd_nama_barang').Value := fieldbyname('jd_nama_barang').Value;
      dm.fakturpajakdetail.FieldByName('fd_qty').Value         := fieldbyname('jd_qty').Value;
      dm.fakturpajakdetail.FieldByName('fd_harga').Value       := fieldbyname('jd_harga_jual').Value;
      dm.fakturpajakdetail.FieldByName('fd_row_total').Value   := fieldbyname('jd_total').Value;
      dm.fakturpajakdetail.Post;
      dm.fakturpajakdetail.ApplyUpdates;
      
    next;
    end; // end of while do
  end;

  //cetak faktur pajak
  if cbcetak.Checked = true then
  begin

  with dm.fakturpajakrpt do
  begin
    sql.Text := 'select * from fakturpajak where fp_kode = (:ref) ';
    params.ParamByName('ref').Value := nodokumen.Text;
    open;

    kodefaktur := fieldbyname('fp_kode').Value;
    tgl := formatdatetime('dd mmmm yyyy',fieldbyname('fp_date').Value);
  end;


  with dm.fakturpajakdetailrpt do
  begin
    sql.Text := 'select * from fakturpajakdetail where fd_kode = (:fk) ';
    params.ParamByName('fk').Value := kodefaktur;
    open;
  end;

  //tandai flag faktur dengan 1 untuk melihat bahwa faktur pajak sudah dicetak
  dm.tagihanview.Edit;
  dm.tagihanview.FieldByName('in_fakturpajak').Value := 1;
  dm.tagihanview.Post;
  dm.tagihanview.ApplyUpdates;

  rpPajak.ProjectFile := 'fakturpajak.rav';
  rpPajak.SelectReport('fakturpajak.rav',true);
  rpPajak.SetParam('tanggal',tgl);
  rpPajak.Execute;
  end; // end of cbcetak
end;





procedure TpajakAddfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.pajakinsert);
  tgldok.Date := date;
end;

procedure TpajakAddfrm.exdppKeyPress(Sender: TObject; var Key: Char);
begin
// if not (Key in ['0'..'9',#8, DecimalSeparator]) then Key := #0;
end;

procedure TpajakAddfrm.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9',#8, DecimalSeparator]) then Key := #0;
end;

procedure TpajakAddfrm.dppKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8, DecimalSeparator]) then Key := #0;
end;

procedure TpajakAddfrm.dppExit(Sender: TObject);
var angka : double;
begin
 angka := strToFloat(dpp.Text);
 dpp.Text := format('%n',[angka]);
end;

procedure TpajakAddfrm.SpeedButton1Click(Sender: TObject);
begin
 aktifkanform(wpviewfrm,TWPviewfrm);
end;

procedure TpajakAddfrm.btntambahClick(Sender: TObject);
begin
  generatefakturpajak;
  dm.pajakinsert.Append;
  dm.pajakinsert.FieldByName('fp_kode').Value := gNofaktur;
  //npwp.SetFocus;
  btnsimpan.Visible := true;
  btnbatal.Visible  := true;
end;

procedure TpajakAddfrm.btnsimpanClick(Sender: TObject);
begin
 if messagedlg('Simpan Faktur Pajak ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    simpanFaktur;
    btnsimpan.Visible := false;
    btnbatal.Visible  := false;
    dm.fakturpajak.Refresh;
 end;
end;

procedure TpajakAddfrm.btnbatalClick(Sender: TObject);
begin
 if messagedlg('Batalkan Faktur Pajak ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    dm.pajakinsert.CancelUpdates;
   // dm.pajakinsert.Append;
    btnsimpan.Visible := false;
    btnbatal.Visible  := false;
 end;
end;

procedure TpajakAddfrm.npwpChange(Sender: TObject);
begin
 if dm.pajakinsert.State in [dsInsert,dsEdit] then
 begin
   btnsimpan.Visible  := true;
   btnbatal.Visible   := true;
 end;
end;

procedure TpajakAddfrm.FormActivate(Sender: TObject);
begin
  if isPrintPajak = 1 then
  begin
     btnsimpan.Visible := false;
     btntambah.Visible := false;
     btnbatal.Visible  := false;
     cbcetak.Visible   := false;
     btncetak.Visible  := true;
     tgldok.Date := dm.fakturpajaklist.fieldbyname('fp_date').Value;
  end else
  begin
     btnsimpan.Visible := true;
     btntambah.Visible := true;
     btnbatal.Visible  := true;
     cbcetak.Visible   := true;
     btncetak.Visible  := false;
     tgldok.Date := dm.tagihanview.fieldbyname('in_date').Value;
  end;

end;

procedure TpajakAddfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 isPrintPajak := 0;
 action := caFree;
end;

procedure TpajakAddfrm.btncetakClick(Sender: TObject);
var kodefaktur : string;
    tgl        : string;
begin
   with dm.fakturpajakrpt do
  begin
    sql.Text := 'select * from fakturpajak where fp_kode = (:ref) ';
    params.ParamByName('ref').Value := nodokumen.Text;
    open;

    kodefaktur := fieldbyname('fp_kode').Value;
    tgl := formatdateTime('dd mmmm yyyy',fieldbyname('fp_date').Value);
  end;

  //showmessage(kodefaktur);

  with dm.fakturpajakdetailrpt do
  begin
    sql.Text := 'select * from fakturpajakdetail where fd_kode = (:fk) ';
    params.ParamByName('fk').Value := kodefaktur;
    open;


  end;

 

  rpPajak.ProjectFile := 'fakturpajak.rav';
  rpPajak.SelectReport('fakturpajak.rav',true);
  rpPajak.SetParam('tanggal',tgl);
  rpPajak.Execute;
end;

end.
