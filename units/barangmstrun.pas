unit barangmstrun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, baseform,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent, ImgList,
  JvNetscapeSplitter, DB,  JvXPCore, JvXPButtons, DBCtrls,
  JvDBControls;

type
  Tbarangmstrfrm = class(TfrmBase)
    DBGrid1: TDBGrid;
    JvScrollMaxBand1: TJvScrollMaxBand;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    JvScrollMaxBand3: TJvScrollMaxBand;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure doSearch(const text: string); override;
  public
    { Public declarations }
  end;

var
  barangmstrfrm: Tbarangmstrfrm;

implementation

uses dmun, fungsi_merp, barangaddun;

{$R *.dfm}

procedure Tbarangmstrfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.barang);
end;

procedure Tbarangmstrfrm.SpeedButton1Click(Sender: TObject);
begin
  dm.barang.Append;
  aktifkanform(barangAddFrm, TBarangAddFrm);
end;

procedure Tbarangmstrfrm.SpeedButton2Click(Sender: TObject);
begin
  dm.barang.Edit;
  aktifkanform(BarangAddFrm, TBarangAddFrm);
end;

procedure Tbarangmstrfrm.DBGrid1DblClick(Sender: TObject);
begin
  dm.barang.Edit;
  aktifkanform(BarangAddFrm, TBarangAddFrm);
end;

procedure Tbarangmstrfrm.doSearch(const text: string);
begin
  inherited;
  with dm.barang do
  begin
    sql.Text :=
      'SELECT * FROM barang WHERE br_nama LIKE (:nama) ORDER BY br_id ASC ';
    params.ParamByName('nama').Value := '%' + text + '%';
    open;
  end;
end;

end.

