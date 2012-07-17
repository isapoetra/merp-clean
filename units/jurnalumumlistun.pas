unit jurnalumumlistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids;

type
  Tjurnalumumlistfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure hapusJurnalUmum;
  public
    { Public declarations }
  end;

var
  jurnalumumlistfrm: Tjurnalumumlistfrm;

implementation

uses dmun,fungsi_merp, jurnalumumun;
{$R *.dfm}

procedure Tjurnalumumlistfrm.hapusJurnalUmum;
var kodetrans : string;
begin
  kodetrans := dm.jurnalumum.fieldbyname('ju_kode').AsString;

  with dm.jurnaldetail do
  begin
    sql.Text := 'select * from jurnal_umum_detail where jl_kode = (:jk) ';
    params.ParamByName('jk').Value := dm.jurnalumum.fieldbyname('ju_kode').Value;
    open;
    last;
    while not bof do
    begin
      delete;
      previous;
    end;
    applyupdates;
  end;

  with dm.gl_hapus do
  begin
    sql.Text := 'select * from general_ledger where gl_ref = (:ref)';
    params.ParamByName('ref').Value := kodetrans;
    open;
    last;
    while not bof do
    begin
    delete;
    previous;
    end;
    applyupdates;
  end;

  dm.jurnalumum.Delete;
  dm.jurnalumum.ApplyUpdates;


end;

procedure Tjurnalumumlistfrm.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('Hapus Jurnal ini? ',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if dm.jurnalumum.FieldByName('ju_kode').Value = 'JU00000000' then
    begin
      messagedlg('Kode Sistem, tidak bisa dihapus!',mtError,[mbOk],0);
      abort;
    end;
    hapusJurnalumum;
  end;
end;

procedure Tjurnalumumlistfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.jurnalumum);
  aktifkandata(dm.jurnaldetail);
end;

procedure Tjurnalumumlistfrm.SpeedButton4Click(Sender: TObject);
begin
  aktifkanform(jurnalumumfrm,Tjurnalumumfrm);
end;

end.
