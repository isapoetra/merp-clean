unit inventoryun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Menus, baseform,
  Data.DB, Vcl.ImgList, JvXPCore, JvXPButtons, JvDBControls, JvExControls,
  JvScrollMax, JvExExtCtrls, JvExtComponent, JvNetscapeSplitter;

type
  Tinventoryfrm = class(TFrmBase)
    caripn: TPanel;
    cari: TEdit;
    DBGrid1: TDBGrid;
    lookgudang: TDBLookupComboBox;
    popinvent: TPopupMenu;
    RefreshData1: TMenuItem;
    Label2: TLabel;
    procedure cariChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lookgudangClick(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
  private
    procedure refreshData();
  public
    { Public declarations }
  end;

var
  inventoryfrm: Tinventoryfrm;

implementation

uses dmun, fungsi_merp, dsun;

{$R *.dfm}

procedure Tinventoryfrm.cariChange(Sender: TObject);
begin
  refreshData;
end;

procedure Tinventoryfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.inventory);
  DataReadOnly := true;
  dm.gudang.Active := true;
  ShowSearch := false;
end;

procedure Tinventoryfrm.lookgudangClick(Sender: TObject);
begin
  refreshData();
end;

procedure Tinventoryfrm.refreshData;
begin
  with dm.inventory do
  begin
    Close;
    sql.Text := 'select * from vw_stock_barang where 1=1';
    if lookgudang.Text <> '' then
      sql.Text := sql.Text + ' and in_kd_gudang = ' +
        QuotedStr(lookgudang.KeyValue);
    if cari.Text <> '' then
      sql.Text := sql.Text + ' and (br_nama like ''%' + cari.Text +
        '%'' or br_type like ''%' + cari.Text + '%'')';
    Open;
  end;
end;

procedure Tinventoryfrm.RefreshData1Click(Sender: TObject);
begin
  inherited;
  refreshData;
end;

end.
