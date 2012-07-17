unit penawaranun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids,
  DBGrids, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  Tpenawaranfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    SpeedButton2: TSpeedButton;
    po: TDBEdit;
    lookcust: TDBLookupComboBox;
    lookpic: TDBLookupComboBox;
    dbtgl: TDBEdit;
    lookproj: TDBLookupComboBox;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    rpQuotation: TRvProject;
    rsQuot: TRvSystem;
    qtpenawaran: TRvDataSetConnection;
    qtcust: TRvDataSetConnection;
    qtpenawaran_detail: TRvDataSetConnection;
    qtpic: TRvDataSetConnection;
    qtfootnote: TRvDataSetConnection;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
    procedure generatePenawaran;
    procedure cetakQuotation;
  public
    { Public declarations }
  end;

var
  penawaranfrm: Tpenawaranfrm;

implementation

uses dmun,fungsi_merp,strutils, barangviewun;
{$R *.dfm}

procedure Tpenawaranfrm.generatePenawaran;
var getNo                 : integer;
    dbpo                  : string;
    getMonth              : integer;
    getMonthdb            : integer;
    noPO                  : string;
    zerofill,getYear      : string;
    getyeardb             : string;
    finalmonth            : string;
begin
   getMonth := strToInt(AnsiMidStr(dateToStr(date),4,2)); //ambil digit bulan dan jadikan integer utk membandingkan bulan saat ini dgn bln pd dbase
   getYear  :=RightStr(DateToStr(date),4);
   with dm.penawaran do
   begin
      sql.Text := 'SELECT * FROM quotation ORDER BY qt_id DESC LIMIT 1';
      open;
      dbpo       := fieldbyname('qt_kode').Value;
      getMonthdb := StrToInt(AnsiMidStr(fieldbyname('qt_kode').Value,11,2));  //ambil digit bulan dari database untuk ditampilkan
      getyeardb  := rightStr(dbpo,4);
      getNo      := StrToInt(LeftStr(dbpo,3))+1;
   end;

    case Length(intToStr(getNo))of
    1 :  zerofill := '00';
    2 :  zerofill := '0';
    3 :  zerofill := '';
    end;

      if length(intToStr(getmonth))=1 then
       begin
          finalmonth := '0'+intToStr(getmonth);
       end else
       begin
          finalmonth := intToStr(getmonth);
       end;

    if (getyear <> getyeardb) then
    begin
      noPO := '001/SV/QT/01/'+getYear;
    end else
    if (getmonth <> getmonthdb)  then   // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
    begin
       //showmessage('bulan di db tdk sama dgn sistem');

       
       noPO := '001'+'/'+'SV/QT/'+finalmonth+'/'+getYear;     // jika tdk sama maka sistem menganggap bulan baru
    end else if (getmonth = getmonthdb) then
    begin
      noPO := zerofill+intToStr(getNo)+'/'+'SV/QT/'+finalMonth+'/'+getYear;  // jika sama maka
    end;

    dm.penawaran.Append;
    dm.penawaran_detail.Append;
    dbtgl.Text := dateToStr(date);
    po.Text := noPO;
    dm.penawaran.Post;
end;

procedure Tpenawaranfrm.cetakQuotation;
begin
  with dm.penawaran_detail do
  begin
   sql.Text := 'select * from quotation_detail where qd_kode = (:qk) ';
   params.ParamByName('qk').Value := po.Text;
   open;
  end;

  

  rpQuotation.ProjectFile := 'quotation.rav';
  rpQuotation.SelectReport('quotation.rav',true);
  rpQuotation.Execute;
end;

procedure Tpenawaranfrm.FormCreate(Sender: TObject);
begin
   aktifkandata(dm.penawaran);
   aktifkandata(dm.penawaran_detail);
   aktifkandata(dm.customer);
   aktifkandata(dm.project);
   aktifkandata(dm.custpic);
end;

procedure Tpenawaranfrm.btntambahClick(Sender: TObject);
begin
 generatePenawaran;
 btnsimpan.Visible := true;
 btnbatal.Visible  := true;
end;

procedure Tpenawaranfrm.SpeedButton1Click(Sender: TObject);
begin
 dbtgl.Enabled := true;
end;

procedure Tpenawaranfrm.btnsimpanClick(Sender: TObject);
begin
if messagedlg('Simpan Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
  dbtgl.Enabled := false;
  btnsimpan.Visible := false;
  btnbatal.Visible  := false;
  dm.penawaran.ApplyUpdates;
  dm.penawaran_detail.ApplyUpdates;
  cetakQuotation;
end;  
end;

procedure Tpenawaranfrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
   aktifkanform(barangviewfrm,TBarangViewfrm);
 end;
end;

procedure Tpenawaranfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 isPenawaran :=0;
end;

procedure Tpenawaranfrm.btnbatalClick(Sender: TObject);
begin
if messagedlg('Batalkan Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
   btnsimpan.Visible := false;
   btnbatal.Visible  := false;
   dm.penawaran.CancelUpdates;
   dm.penawaran_detail.CancelUpdates;
end;
end;

end.
