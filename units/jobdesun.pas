unit jobdesun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  Tjobdesfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    DBGrid1: TDBGrid;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jobdesfrm: Tjobdesfrm;

implementation
uses dmun,fungsi_merp, jabatanaddun;
{$R *.dfm}

procedure Tjobdesfrm.btntambahClick(Sender: TObject);
begin
  dm.jobdes.Append;
  aktifkanform(jabatanaddfrm,TJabatanaddfrm);

end;

procedure Tjobdesfrm.btneditClick(Sender: TObject);
begin
  dm.jobdes.Edit;
  aktifkanform(jabatanAddfrm,TJabatanAddfrm);
end;

procedure Tjobdesfrm.FormActivate(Sender: TObject);
begin
  aktifkandata(dm.jobdes);
end;

procedure Tjobdesfrm.cariChange(Sender: TObject);
begin
  with dm.jobdes do
  begin
   sql.Text := 'select * from jobdes where jd_nama like (:nama) ';
   params.ParamByName('nama').Value := '%'+cari.Text+'%';
   open;
  end;
end;

end.
