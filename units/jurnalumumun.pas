unit jurnalumumun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  Tjurnalumumfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    pntop: TPanel;
    gridjurnal: TDBGrid;
    Panel3: TPanel;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    btntambah: TSpeedButton;
    dbref: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbtgl: TDBEdit;
    ket: TDBEdit;
    Label4: TLabel;
    procedure gridjurnalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btntambahClick(Sender: TObject);
    procedure pntopExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure generateRef;
    procedure prosesAkunting;
    procedure cekEntry;
  public
    { Public declarations }
  end;

var
  jurnalumumfrm: Tjurnalumumfrm;

implementation

uses dmun,fungsi_merp, akunviewun,strutils;
{$R *.dfm}

procedure Tjurnalumumfrm.cekEntry;
var  totalKredit,totalDebet : double;
begin
  // periksa apakah entry sudah balance ???
  totalKredit :=0;
  totalDebet := 0;
   with dm.jurnal_umum_detail do
  begin
    first;
    while not eof do
    begin
    if fieldbyname('jl_kredit').Value = null then
    begin
       edit;
       fieldbyname('jl_kredit').Value := 0;
    end;

    if fieldbyname('jl_debet').Value = null then
    begin
       edit;
       fieldbyname('jl_debet').Value := 0;
    end;

    totalKredit := totalKredit+fieldbyname('jl_kredit').Value;
    totalDebet  := totalDebet+fieldbyname('jl_debet').Value;
    next;
    end;
  end;

  if totalKredit <> totalDebet then
  begin
    messagedlg('Kredit dan Debet Tidak Balance, coba seimbangkan Kredit dan Debet.'+#13+
    'Petunjuk -> Debet-Kredi harus bernilai 0 ',mtWarning,[mbOk],0);
    abort;
  end;
end;

procedure Tjurnalumumfrm.prosesAkunting;
var exponen : double;
begin


  aktifkandata(dm.general_ledger);
  with dm.jurnal_umum_detail do
  begin

    first;
    while not eof do
    begin


      dm.general_ledger.append;
      dm.general_ledger.fieldbyname('gl_akun').Value   := fieldbyname('jl_akun').Value;
      dm.general_ledger.fieldbyname('gl_ref').Value    := dm.jurnalumum.fieldbyname('ju_kode').Value;
      dm.general_ledger.fieldbyname('gl_debet').Value  := fieldbyname('jl_debet').Value;
      dm.general_ledger.fieldbyname('gl_kredit').Value := fieldbyname('jl_kredit').Value;
      dm.general_ledger.fieldbyname('gl_tgl').Value    := date;
      dm.general_ledger.FieldByName('gl_desc').Value   := fieldbyname('jl_desc').Value+','+dm.jurnalumum.fieldbyname('ju_note').Value;
      dm.general_ledger.fieldbyname('gl_amount').Value := fieldbyname('jl_amount').Value;
      dm.general_ledger.post;
     next;
    end; // end of while
  end;
  
end;

procedure Tjurnalumumfrm.generateRef;
var noref : integer;
begin
  with dm.juref do
  begin
    sql.Text := 'select * from jurnal_umum order by ju_id desc limit 1 ';
    open;
     noref := strToInt(RightStr(fieldbyname('ju_kode').Value,8))+1;
  end;
  dm.jurnalumum.Append;
  dm.jurnal_umum_detail.Append;
  dbref.Text := 'JU'+format('%8.8d',[noref]);
  dbtgl.Text := dateToStr(date);
  dm.jurnalumum.Post;
end;

procedure Tjurnalumumfrm.gridjurnalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_Return then
 begin
  aktifkanform(akunviewfrm,TAkunViewfrm);
 end;
end;

procedure Tjurnalumumfrm.btntambahClick(Sender: TObject);
begin
 generateRef;
 btnsimpan.Visible  := true;
 btnbatal.Visible   := true;
 pntop.Enabled      := true;
 gridjurnal.Enabled := true;
 ket.SetFocus;
end;

procedure Tjurnalumumfrm.pntopExit(Sender: TObject);
begin
 dm.jurnalumum.Post;
end;

procedure Tjurnalumumfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.jurnalumum);
 aktifkandata(dm.jurnal_umum_detail);
end;

procedure Tjurnalumumfrm.btnsimpanClick(Sender: TObject);
begin
 if messagedlg('Posting Jurnal?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    cekEntry;
    prosesakunting;
   dm.jurnalumum.edit;
   dm.jurnalumum.Post;
   dm.jurnalumum.ApplyUpdates;

    dm.jurnal_umum_detail.edit;
    dm.jurnal_umum_detail.post;
    dm.jurnal_umum_detail.ApplyUpdates;

     
    btnsimpan.Visible  := false;
    btnbatal.Visible   := false;
    pntop.Enabled := false;
    gridjurnal.Enabled := false;
 end;
end;

procedure Tjurnalumumfrm.btnbatalClick(Sender: TObject);
begin
 if messagedlg('Batalkan Posting?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
   dm.jurnalumum.CancelUpdates;
   dm.jurnal_umum_detail.CancelUpdates;
   btnsimpan.Visible := false;
   btnbatal.Visible  := false;
    pntop.Enabled := false;
    gridjurnal.Enabled := false;
 end;
end;

procedure Tjurnalumumfrm.FormCreate(Sender: TObject);
begin
   aktifkandata(dm.jurnalumum);
end;

end.
