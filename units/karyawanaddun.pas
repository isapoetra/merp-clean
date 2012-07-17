unit karyawanaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, ComCtrls;

type
  Tkaryawanaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    pagebio: TPageControl;
    tab1: TTabSheet;
    tab2: TTabSheet;
    noninduk: TDBEdit;
    namadepan: TDBEdit;
    namabelakang: TDBEdit;
    jk: TDBComboBox;
    tempatlahir: TDBEdit;
    tgllahir: TDBEdit;
    status: TDBComboBox;
    alamat: TDBMemo;
    kota: TDBEdit;
    hp: TDBEdit;
    email: TDBEdit;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    mulaikerja: TDBEdit;
    Label15: TLabel;
    brhntikerja: TDBEdit;
    Label16: TLabel;
    limit: TDBEdit;
    Label17: TLabel;
    dpt: TDBLookupComboBox;
    Label18: TLabel;
    levelgaji: TDBLookupComboBox;
    Label19: TLabel;
    metodabayar: TDBComboBox;
    namabank: TDBLookupComboBox;
    Label20: TLabel;
    Label21: TLabel;
    norek: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bevel1: TBevel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SpeedButton5: TSpeedButton;
    ptkp: TDBLookupComboBox;
    npwp: TDBEdit;
    tglnpwp: TDBEdit;
    Label24: TLabel;
    jtbn: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tab2Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  karyawanaddfrm: Tkaryawanaddfrm;

implementation

uses dmun,fungsi_merp, db,jobdesun, salary_levelun, bankun, ptkpun, deptun;
{$R *.dfm}

procedure Tkaryawanaddfrm.btntambahClick(Sender: TObject);
begin
  btnsimpan.Visible := true;
  btnbatal.Visible := true;
  dm.karyawan.Append;
  noninduk.SetFocus;
end;

procedure Tkaryawanaddfrm.btnsimpanClick(Sender: TObject);
begin
  if length(noninduk.Text)=0 then
  begin
    showmessage('No Induk Harus diisi!');
    if pagebio.ActivePageIndex = 1 then
    begin
      pagebio.SelectNextPage(true);
    end;
    noninduk.SetFocus;
    exit;
  end; 

  if messagedlg('Simpan Data ini? ',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  if isTambahKaryawan = 1 then
  begin
  dm.karyawan.Edit;

  dm.karyawan.Post;
  dm.karyawan.ApplyUpdates;

  dm.karyawan_Detail.Edit;
  dm.karyawan_detail.FieldByName('kd_no_induk').Value := noninduk.Text;
  dm.karyawan_detail.Post;
  dm.karyawan_detail.ApplyUpdates;
  btnsimpan.Visible := false;
  btnbatal.Visible := false;
  end else
  begin
  dm.karyawan.Edit;

  dm.karyawan.Post;
  dm.karyawan.ApplyUpdates;

  dm.karyawan_Detail.Edit;
  dm.karyawan_detail.Post;
  dm.karyawan_detail.ApplyUpdates;
  end;

  end;

end;

procedure Tkaryawanaddfrm.btnbatalClick(Sender: TObject);
begin
   if messagedlg('Simpan Data ini? ',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  dm.karyawan.CancelUpdates;
  dm.karyawan_detail.CancelUpdates;
  btnsimpan.Visible := false;
  btnbatal.Visible := false;
  end;
end;

procedure Tkaryawanaddfrm.FormActivate(Sender: TObject);
begin
 pagebio.ActivePageIndex := 0;

 aktifkandata(dm.jobdes);
 aktifkandata(dm.salary_level);
 aktifkandata(dm.dept);
 aktifkandata(dm.ptkp);
 aktifkandata(dm.bank);

 if isTambahkaryawan=1 then
 begin
  noninduk.SetFocus;
 end;
end;

procedure Tkaryawanaddfrm.SpeedButton6Click(Sender: TObject);
begin
  aktifkanform(jobdesfrm,TJobdesfrm);
end;

procedure Tkaryawanaddfrm.SpeedButton2Click(Sender: TObject);
begin
 aktifkanform(salaryLevelfrm,TSalaryLevelfrm);
end;

procedure Tkaryawanaddfrm.tab2Enter(Sender: TObject);
begin
 if isTambahKaryawan =1 then
 begin
   dm.karyawan.Post;
 end;
end;

procedure Tkaryawanaddfrm.SpeedButton4Click(Sender: TObject);
begin
 aktifkanform(bankfrm,TBankfrm);
end;

procedure Tkaryawanaddfrm.SpeedButton5Click(Sender: TObject);
begin
  aktifkanform(ptkpfrm,Tptkpfrm);
end;

procedure Tkaryawanaddfrm.SpeedButton1Click(Sender: TObject);
begin
 aktifkanform(deptfrm,TDeptfrm);
end;

end.
