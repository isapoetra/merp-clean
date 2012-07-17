unit fakturdaninvoiceun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  ExtCtrls, Buttons;

type
  Tinvoicprintfrm = class(TForm)
    Panel1: TPanel;
    rpInvoice: TRvProject;
    RvSystem1: TRvSystem;
    rdincust: TRvDataSetConnection;
    rdinvoice: TRvDataSetConnection;
    rdinvoicedetail: TRvDataSetConnection;
    rdbarangrpt: TRvDataSetConnection;
    rddeliveryrpt: TRvDataSetConnection;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    Panel2: TPanel;
    numinvoice: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    numtransaksi: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
   
  public
    { Public declarations }
  end;

var
  invoicprintfrm: Tinvoicprintfrm;

implementation

uses dmun,strutils,db,fungsi_merp;

{$R *.dfm}



procedure Tinvoicprintfrm.FormActivate(Sender: TObject);
begin
   numinvoice.Text := dm.tagihanview.fieldbyname('in_kode').Value;
   numtransaksi.Text := dm.tagihanview.fieldbyname('in_kode_jual').Value;
end;

procedure Tinvoicprintfrm.btntambahClick(Sender: TObject);
begin
  with dm.tagihanrpt do
  begin
    sql.Text := 'select * from invoice where in_kode = (:kd) ';
    params.ParamByName('kd').Value := dm.tagihanview.fieldbyname('in_kode').Value;
    open;
  end;

  with dm.deliveryrpt do
  begin
    sql.Text := 'select * from do where do_ju_trans = (:dot) ';
    params.ParamByName('dot').Value := dm.tagihanview.fieldbyname('in_kode_jual').Value;
    open;
  end;



  rpInvoice.ProjectFile := 'invoice.rav';
  rpInvoice.SelectReport('invoice.rav',true);
  rpInvoice.Execute;
  close;
end;

procedure Tinvoicprintfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

end.
