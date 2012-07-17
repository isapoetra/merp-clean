unit lunaspiutangun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Mask;

type
  Tlunaspiutangfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    tgl: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    jmlbayar: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lunaspiutangfrm: Tlunaspiutangfrm;

implementation

uses fungsi_merp,akuntansi,dmun;
{$R *.dfm}

procedure Tlunaspiutangfrm.FormActivate(Sender: TObject);
begin
    jmlbayar.Text := floatToStr(bayarpiutang);
    tgl.Text      := dateToStr(date);
end;

procedure Tlunaspiutangfrm.SpeedButton1Click(Sender: TObject);
var amount : double;
    ref : string;
begin
  amount := strToFloat(jmlbayar.Text);
  ref    := dm.tagihanview.fieldbyname('in_kode_jual').Value;
  //posting ke general ledger
  posting(amount,0,'130-20',strToDate(tgl.Text),ref,'Pembayaran Piutang Untuk '+ref,-1);//piutang berkurang
  posting(amount,1,'110-20',strToDate(tgl.Text),ref,'Pembayaran Piutang Untuk '+ref,1);//kas bertambah
  showmessage('Proses pembayaran selesai...');
end;

end.
