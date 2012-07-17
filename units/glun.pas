unit glun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave;

type
  Tglfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    blnawal: TComboBox;
    thnawal: TComboBox;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    rpgl: TRvProject;
    rsgl: TRvSystem;
    glpro: TRvDataSetConnection;
    glchart: TRvDataSetConnection;
    blnakhir: TComboBox;
    thnakhir: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  glfrm: Tglfrm;

implementation

uses dmun,strutils;

{$R *.dfm}

procedure Tglfrm.SpeedButton2Click(Sender: TObject);
var pPeriode : string;
begin

 with dm.gl do
 begin
   sql.Text := 'select * from general_ledger where (mid(gl_tgl,6,2) between (:xBlnAwal) and (:xBlnAkhir)) '+
   'and  (left(gl_tgl,4) between (:xThnAwal) and (:xThnAkhir)) ORDER BY gl_akun ASC ';
   params.ParamByName('xBlnAwal').Value  := blnawal.ItemIndex+1;
   params.ParamByName('xBlnAkhir').Value := blnakhir.ItemIndex+1;
   params.ParamByName('xThnAwal').Value  := strToInt(thnawal.Text);
   params.ParamByName('xThnAkhir').Value := strToInt(thnakhir.Text);
   open;
 end;//end of with dm.gl

 if blnawal.ItemIndex = blnakhir.ItemIndex then
 begin
  pPeriode := blnawal.Text+' '+thnawal.Text;
 end else
 begin
  pPeriode := blnawal.Text+' '+thnawal.Text+'-'+blnakhir.Text+' '+thnakhir.Text; 
 end;


 rpgl.SetParam('Periode',pPeriode);
 rpgl.ProjectFile := 'glpro.rav';
 rpgl.SelectReport('glpro.rav',true);
 rpgl.Execute;
end;

procedure Tglfrm.FormCreate(Sender: TObject);
var    blnaktif : integer;
begin
{    curDate := incmonth(date,0);
    for i:=0 to 11 do
    begin
      tgl :=incmonth(date,i);
      cbperiode.Items.Add(formatDateTime('mmmm yyyy',tgl));
    end;

    cbperiode.Text :=  formatDateTime('mmmm yyyy',curdate);}
    thnawal.Items.Add(formatDateTime('yyyy',date));
    thnakhir.Items.Add(formatDateTime('yyyy',date));

   blnaktif := strToInt(AnsiMidStr(DateToStr(date),4,2));
   blnawal.ItemIndex := blnaktif-1;
   blnakhir.ItemIndex := blnaktif-1;

   thnawal.ItemIndex := 0;
   thnakhir.ItemIndex := 0;

end;

end.
