unit barangmstrun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tbarangmstrfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    caripn: TPanel;
    btncari: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    cari: TEdit;
    procedure btncariClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barangmstrfrm: Tbarangmstrfrm;

implementation

uses dmun,fungsi_merp, barangaddun;

{$R *.dfm}

procedure Tbarangmstrfrm.btncariClick(Sender: TObject);
begin
 if caripn.Visible = false then
 begin
    caripn.Visible := true;
    cari.SetFocus;
 end else
 begin
    caripn.Visible := false;
 end;

end;

procedure Tbarangmstrfrm.SpeedButton3Click(Sender: TObject);
begin
 caripn.Visible := false;
end;

procedure Tbarangmstrfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.barang);
end;

procedure Tbarangmstrfrm.SpeedButton1Click(Sender: TObject);
begin
  dm.barang.Append;
  aktifkanform(barangAddFrm,TBarangAddFrm);
end;

procedure Tbarangmstrfrm.SpeedButton2Click(Sender: TObject);
begin
  dm.barang.Edit;
  aktifkanform(BarangAddFrm,TBarangAddFrm);
end;

procedure Tbarangmstrfrm.cariChange(Sender: TObject);
begin
  with dm.barang do
  begin
    sql.Text := 'SELECT * FROM barang WHERE br_nama LIKE (:nama) ORDER BY br_id ASC ';
    params.ParamByName('nama').Value := '%'+cari.Text+'%';
    open;
  end;
end;

procedure Tbarangmstrfrm.DBGrid1DblClick(Sender: TObject);
begin
  dm.barang.Edit;
  aktifkanform(BarangAddFrm,TBarangAddFrm);
end;

end.
