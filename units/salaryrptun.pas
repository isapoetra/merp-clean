unit salaryrptun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DBCtrls, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  Tsalaryrptfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    Panel2: TPanel;
    cbkaryawan: TDBLookupComboBox;
    cbperiode: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    rpGaji: TRvProject;
    rsgaji: TRvSystem;
    rdgaji: TRvDataSetConnection;
    rdkaryawanrpt: TRvDataSetConnection;
    rdkardetail: TRvDataSetConnection;
    rdpenambah: TRvDataSetConnection;
    rdpengurang: TRvDataSetConnection;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
    procedure cetakSlip;
  public
    { Public declarations }
  end;

var
  salaryrptfrm: Tsalaryrptfrm;

implementation
uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tsalaryrptfrm.FormActivate(Sender: TObject);
begin
  aktifkandata(dm.karyawanlookup);
end;


procedure Tsalaryrptfrm.cetakSlip;
begin
  with dm.salaryrpt do
  begin
    sql.Text := 'select * from salary where sa_kr_id = (:id) '+
    'and sa_period = (:pr) ';
    params.ParamByName('id').Value := cbkaryawan.KeyValue;
    params.ParamByName('pr').Value := cbperiode.Text;
    open;
  end;

  rpGaji.ProjectFile := 'slipgaji.rav';
  rpGaji.SelectReport('slipgaji.rav',true);
  rpGaji.Execute;
end;


procedure Tsalaryrptfrm.FormCreate(Sender: TObject);
var i: integer;
    tgl : TDateTime;
    curdate : TDateTime;
begin
    curDate := incmonth(date,0);
    for i:=-1 to 10 do
    begin
      tgl :=incmonth(date,i);
      cbperiode.Items.Add(formatDateTime('mmmm yyyy',tgl));
    end;

    cbperiode.Text :=  formatDateTime('mmmm yyyy',curdate);
end;

procedure Tsalaryrptfrm.btntambahClick(Sender: TObject);
begin
  cetakSlip;
end;

end.
