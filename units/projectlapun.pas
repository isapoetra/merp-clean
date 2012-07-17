unit projectlapun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave;

type
  Tprojectlapfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    tglawal: TDateTimePicker;
    tglakhir: TDateTimePicker;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    lookproject: TDBLookupComboBox;
    rpjualproject: TRvProject;
    RvSystem1: TRvSystem;
    rdjualproject: TRvDataSetConnection;
    rdprojectdetailrpt: TRvDataSetConnection;
    rdcust: TRvDataSetConnection;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure laporanProject;
  public
    { Public declarations }
  end;

var
  projectlapfrm: Tprojectlapfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tprojectlapfrm.laporanProject;
var fawal,fakhir : string;
begin
  fawal   := formatDateTime('yyyy-mm-dd',tglawal.Date);
  fakhir := formatDateTime('yyyy-mm-dd',tglakhir.Date);

  with dm.jualrpt do
  begin
   sql.Text := 'select * from jual where ju_project = (:ckode) '+
   'and ju_tgl between (:awal) and (:akhir) order by ju_id asc ';
   params.ParamByName('ckode').Value := lookproject.KeyValue;
   params.ParamByName('awal').Value  :=   fawal;
   params.ParamByName('akhir').Value :=   fakhir;
   open;
  end; // with dm.jualrpt
  rpjualproject.ProjectFile := 'project.rav';
  rpJualProject.SelectReport('project.rav',true);
  rpJualProject.Execute;
end;

procedure Tprojectlapfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.project);
end;

procedure Tprojectlapfrm.SpeedButton2Click(Sender: TObject);
begin
 laporanProject;
end;

end.
