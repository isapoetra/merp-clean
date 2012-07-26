unit dolistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave, DBCtrls, Buttons, baseform, Data.DB,
  Vcl.ImgList, JvXPCore, JvXPButtons, JvDBControls, JvExControls, JvScrollMax,
  JvExExtCtrls, JvExtComponent, JvNetscapeSplitter;

type
  Tdolistfrm = class(TfrmBase)
    Panel2: TPanel;
    griddo: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    popdo: TPopupMenu;
    CetakDeliveryOrder1: TMenuItem;
    rpDeliver: TRvProject;
    rsdeliver: TRvSystem;
    rdcustdeliver: TRvDataSetConnection;
    rdcustpicdeliver: TRvDataSetConnection;
    rddeliverydetail: TRvDataSetConnection;
    rddeliver: TRvDataSetConnection;
    N1: TMenuItem;
    HapusDeliveryOrder1: TMenuItem;
    cbcust: TCheckBox;
    lookcust: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    rdbarangdelrpt: TRvDataSetConnection;
    N2: TMenuItem;
    RefreshData1: TMenuItem;
    procedure cariChange(Sender: TObject);
    procedure CetakDeliveryOrder1Click(Sender: TObject);
    procedure HapusDeliveryOrder1Click(Sender: TObject);
    procedure lookcustClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dolistfrm: Tdolistfrm;

implementation

uses dmun, fungsi_merp, helper, deliveryun;
{$R *.dfm}

procedure Tdolistfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.deliveryview);
end;

procedure Tdolistfrm.btnAddClick(Sender: TObject);
begin
  inherited;
  showFormModal(TDeliveryfrm);
  dm.deliveryview.Refresh;
end;

procedure Tdolistfrm.cariChange(Sender: TObject);
begin
  if cbcust.Checked = true then
  begin
    with dm.deliveryview do
    begin
      sql.Text := 'select * from do  ' + 'where (do_kode like (:opsi) or  ' +
        'do_ju_trans like (:opsi)) and do_cust_kode = (:ck)  order by do_id desc ';
      params.ParamByName('opsi').Value := '%' + cari.Text + '%';
      params.ParamByName('ck').Value := lookcust.KeyValue;
      open;
    end; // end of dm.delivery
  end
  else
  begin
    with dm.deliveryview do
    begin
      sql.Text := 'select * from do  ' + 'where do_kode like (:opsi) or  ' +
        'do_ju_trans like (:opsi) order by do_id desc ';
      params.ParamByName('opsi').Value := '%' + cari.Text + '%';
      open;
    end;
  end; // end of cbcust.checked
end;

procedure Tdolistfrm.CetakDeliveryOrder1Click(Sender: TObject);
begin
  with dm.deliveryrpt do
  begin
    sql.Text := 'select * from do where do_kode = (:kd) ';
    params.ParamByName('kd').Value := dm.deliveryview.fieldbyname
      ('do_kode').Value;
    open;
  end;

  with dm.deliverydetailrpt do
  begin
    sql.Text :=
      'select * from dodetail where dd_kode = (:dd) order by dd_id desc ';
    params.ParamByName('dd').Value := dm.deliveryview.fieldbyname
      ('do_kode').Value;
    open;
  end;

  rpDeliver.ProjectFile := 'do.rav';
  rpDeliver.SelectReport('do.rav', true);
  rpDeliver.Execute;
end;

procedure Tdolistfrm.HapusDeliveryOrder1Click(Sender: TObject);
begin
  aktifkandata(dm.delivery);
  if messagedlg('Hapus Transaksi ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    if dm.delivery.Locate('do_kode', griddo.Fields[0].Value, [loCaseInsensitive]
      ) = true then
    begin
      // showmessage('qtmu');
      dm.delivery.Delete;
      dm.delivery.ApplyUpdates;
      dm.deliveryview.Refresh;
    end;
  end; // end if messagedlg

end;

procedure Tdolistfrm.lookcustClick(Sender: TObject);
begin
  if cbcust.Checked = true then
  begin
    with dm.deliveryview do
    begin
      sql.Text := 'select * from do  ' +
        'where  do_cust_kode = (:ck)  order by do_id desc ';
      params.ParamByName('ck').Value := lookcust.KeyValue;
      open;
    end; // end of dm.delivery
  end;
end;

procedure Tdolistfrm.SpeedButton1Click(Sender: TObject);
begin
  with dm.deliveryview do
  begin
    sql.Text := 'select * from do  ' + 'order by do_id desc ';
    open;
  end; // end of dm.delivery
  cbcust.Checked := false;
end;

procedure Tdolistfrm.RefreshData1Click(Sender: TObject);
begin
  dm.deliveryview.Refresh;
end;

end.
