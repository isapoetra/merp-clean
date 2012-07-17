unit inventoryun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Menus;

type
  Tinventoryfrm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inventoryfrm: Tinventoryfrm;

implementation

uses dmun,db,fungsi_merp;

{$R *.dfm}

procedure Tinventoryfrm.cariChange(Sender: TObject);
begin
  with dm.inventory do
  begin
   sql.Text := 'select * from inventory left join barang on (in_kd_barang=br_id) '+
   'where br_nama like (:opsi) or br_type like (:opsi) ';
   params.ParamByName('opsi').Value := '%'+cari.Text+'%';
   open;
  end;

end;

procedure Tinventoryfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.inventory);
end;

procedure Tinventoryfrm.lookgudangClick(Sender: TObject);
begin
 with dm.inventory do
 begin
   sql.Text := 'select * from inventory where in_kd_gudang = (:kg) ';
   params.ParamByName('kg').Value := lookgudang.KeyValue;
   open;
 end;
end;

procedure Tinventoryfrm.RefreshData1Click(Sender: TObject);
begin
  dm.inventory.Refresh;
  dm.barang.Refresh;
end;

end.
