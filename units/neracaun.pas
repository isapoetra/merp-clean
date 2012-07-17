unit neracaun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, RpBase, RpSystem, RpDefine, RpRave,
  RpCon, RpConDS, ComCtrls, RpRender, RpRenderPDF;

type
  Tneracafrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    rpNeraca: TRvProject;
    rsneraca: TRvSystem;
    rdkasneraca: TRvDataSetConnection;
    Panel2: TPanel;
    cbbulan: TComboBox;
    cbthn: TComboBox;
    pdfneraca: TRvRenderPDF;
    rdsedianeraca: TRvDataSetConnection;
    hutangneraca: TRvDataSetConnection;
    piutangneraca: TRvDataSetConnection;
    hartaneraca: TRvDataSetConnection;
    hutangpajakneraca: TRvDataSetConnection;
    chartofaccount: TRvDataSetConnection;
    labaneraca: TRvDataSetConnection;
    modalneraca: TRvDataSetConnection;
    Label2: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rsneracaAfterPrint(Sender: TObject);
  private
    { Private declarations }
    procedure reportneraca;
  public
    { Public declarations }
  end;

var
  neracafrm: Tneracafrm;

implementation

uses dmun,fungsi_merp,strutils;
{$R *.dfm}

procedure Tneracafrm.reportneraca;
begin
    // generate kas
    with dm.kasneraca do
    begin
      sql.Text := 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) '+
      'order by gl_id desc ';
      params.ParamByName('tglawal').Value  := cbbulan.ItemIndex+1;
      params.ParamByName('tglakhir').Value := cbbulan.ItemIndex+1;
      params.parambyname('akun').Value := '110-20';
      open;
    end;

     with dm.piutangneraca do
    begin
      sql.Text := 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) '+
      'order by gl_id desc ';
      params.ParamByName('tglawal').Value  := cbbulan.ItemIndex+1;
      params.ParamByName('tglakhir').Value := cbbulan.ItemIndex+1;
      params.parambyname('akun').Value := '130-20';
      open;
    end;

    with dm.sedianeraca do
    begin
       sql.Text := 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) '+
      'order by gl_id desc ';
      params.ParamByName('tglawal').Value  := cbbulan.ItemIndex+1;
      params.ParamByName('tglakhir').Value := cbbulan.ItemIndex+1;
      params.parambyname('akun').Value := '140-10';
      open;
    end;

   
    with dm.hutangneraca do
    begin
       sql.Text := 'select gl_akun,sum(gl_amount) as totalhutang from general_ledger where gl_akun like (:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) '+
      'group by gl_akun order by gl_akun asc ';
      params.ParamByName('tglawal').Value  := cbbulan.ItemIndex+1;
      params.ParamByName('tglakhir').Value := cbbulan.ItemIndex+1;
      params.ParamByName('akun').Value := '2%';
      open;
     // if isEmpty=false then showmessage('hutang ada!');
    end;

    with dm.hartatotalneraca do
    begin
       sql.Text := 'select * from general_ledger where gl_akun like (:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) '+
      'order by gl_id desc ';
      params.ParamByName('tglawal').Value  := cbbulan.ItemIndex+1;
      params.ParamByName('tglakhir').Value := cbbulan.ItemIndex+1;
      params.parambyname('akun').Value := '1%';
      open;
     // if isEmpty=false then showmessage('hutang ada!');
    end;

    rpNeraca.ProjectFile := 'neraca.rav';
    rpNeraca.SelectReport('neraca.rav',true);
    rpNeraca.Execute;
end;

procedure Tneracafrm.SpeedButton2Click(Sender: TObject);
begin
  reportneraca;

end;

procedure Tneracafrm.FormCreate(Sender: TObject);
var thn : string;
begin
 thn := RightStr(dateToStr(date),4);
 cbthn.Items.Append(thn);
 cbthn.ItemIndex := 0;
end;

procedure Tneracafrm.FormActivate(Sender: TObject);
var curmonth : integer;
begin
  curmonth := strToInt(AnsiMidStr(dateToStr(date),4,2));
  cbbulan.ItemIndex := curmonth-1;
  cbthn.ItemIndex :=0;
end;

procedure Tneracafrm.rsneracaAfterPrint(Sender: TObject);
begin
 //showmessage('report done!');
end;

end.
