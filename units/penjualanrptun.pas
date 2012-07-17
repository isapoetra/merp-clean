unit penjualanrptun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  Tjualrptfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    tglawal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    tglakhir: TDateTimePicker;
    rpjualreport: TRvProject;
    RvSystem1: TRvSystem;
    rdjualrpt: TRvDataSetConnection;
    rdcustrpt: TRvDataSetConnection;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure laporanPenjualan;
  public
    { Public declarations }
  end;

var
  jualrptfrm: Tjualrptfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tjualrptfrm.laporanPenjualan;
var fTglAwal  : String;
    fTglAkhir : String;
begin
  fTglAwal := formatDateTime('yyyy-mm-dd',TglAwal.Date);
  fTglAkhir := formatDateTime('yyyy-mm-dd',TglAkhir.Date);
  with dm.jualrpt do
  begin
    sql.Text := 'select * from jual where ju_tgl between (:awal) and (:akhir) order by ju_id desc ';
    params.ParamByName('awal').Value  :=  fTglAwal;
    params.ParamByName('akhir').Value :=  fTglAkhir;
    open;
  end;
  rpjualreport.SetParam('periode','Periode: '+dateToStr(tglawal.Date)+' s/d '+dateToStr(tglakhir.Date));
  rpJualreport.ProjectFile := 'jual.rav';
  rpJualReport.SelectReport('jual.rav',true);
  rpJualReport.Execute;
end;

procedure Tjualrptfrm.SpeedButton2Click(Sender: TObject);
begin
  laporanPenjualan;
end;

end.
