unit tanggalubahun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  Ttanggalubahfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    tgl: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

var
  tanggalubahfrm: Ttanggalubahfrm;

implementation

uses dmun,strutils,fungsi_merp,db;

{$R *.dfm}


procedure Ttanggalubahfrm.FormActivate(Sender: TObject);
var tempnomor : string;
begin

  with dm.jualcari do
  begin
    sql.Text := 'select * from jual where ju_kode = (:kd) ';
    params.ParamByName('kd').Value := dm.tagihanview.fieldbyname('in_kode_jual').value;
    open;
    tgl.Date := fieldbyname('ju_tgl').value;
  end;

   with dm.tagihanview do
   begin
    tempnomor := leftStr(fieldbyname('in_kode').Value,10);  // ambil sebelas digit yang tidak diubah oleh perubahan bulan dan tahun
    edit;
    fieldbyname('in_date').Value := tgl.Date;
    fieldbyname('in_kode').Value := tempnomor+RightStr(dateToStr(tgl.Date),7);
    post;
    applyupdates;
   end;
end;

procedure Ttanggalubahfrm.BitBtn1Click(Sender: TObject);
//var tempnomor : string;
begin
  with dm.tagihanview do
   begin
    //tempnomor := leftStr(fieldbyname('in_kode').Value,10);  // ambil sebelas digit yang tidak diubah oleh perubahan bulan dan tahun
    edit;
    fieldbyname('in_date').Value := tgl.Date;
   // fieldbyname('in_kode').Value := tempnomor+RightStr(dateToStr(tgl.Date),7);
    post;
    applyupdates;
   end;
   close;
end;

end.
