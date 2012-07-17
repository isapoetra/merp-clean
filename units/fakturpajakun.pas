unit fakturpajakun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Menus;

type
  Tfakturpajakfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    btnsimpan: TBitBtn;
    btnbatal: TBitBtn;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    cari: TEdit;
    poppajak: TPopupMenu;
    CetakFaktur1: TMenuItem;
    N1: TMenuItem;
    RefreshData1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure CetakFaktur1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fakturpajakfrm: Tfakturpajakfrm;

implementation

uses dmun,fungsi_merp, pajakaddun;
{$R *.dfm}

procedure Tfakturpajakfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.fakturpajaklist);
end;

procedure Tfakturpajakfrm.cariChange(Sender: TObject);
begin
 with dm.fakturpajak do
 begin
   sql.Text := 'select * from fakturpajak where fp_kode like (:kd ) or fp_nama_cust like (:kd) order by fp_id asc ';
   params.ParamByName('kd').Value   := '%'+cari.Text+'%';
   open;
 end;
end;

procedure Tfakturpajakfrm.CetakFaktur1Click(Sender: TObject);
begin
 isPrintPajak := 1;
 //generatefakturpajak;
 aktifkandata(dm.pajakinsert);
// dm.pajakinsert.Append;
 dm.pajakinsert.Edit;
 dm.pajakinsert.FieldByName('fp_kode').Value      := dm.fakturpajaklist.FieldByName('fp_kode').Value;
 dm.pajakinsert.FieldByName('fp_npwp').Value      := dm.fakturpajaklist.FieldByName('fp_npwp').Value ;
 dm.pajakinsert.FieldByName('fp_nama_cust').Value := dm.fakturpajaklist.FieldByName('fp_nama_cust').Value;
 dm.pajakinsert.FieldByName('fp_dpp').Value       := dm.fakturpajaklist.FieldByName('fp_dpp').Value;
 dm.pajakinsert.FieldByName('fp_ppn').Value       := dm.fakturpajaklist.FieldByName('fp_ppn').Value;
 {dm.pajakinsert.FieldByName('fp_kode').Value      := gNofaktur;
 dm.pajakinsert.FieldByName('fp_cust_kode').Value := dm.tagihanview.fieldbyname('in_cust_kode').Value;
 dm.pajakinsert.FieldByName('fp_ref').Value       := dm.tagihanview.fieldbyname('in_kode_jual').Value;
 dm.pajakinsert.FieldByName('fp_total_transaksi').Value    := dm.tagihanview.fieldbyname('in_amount').Value;
 dm.pajakinsert.FieldByName('fp_balance').Value    := dm.tagihanview.fieldbyname('in_balance').Value;    }
 aktifkanform(pajakAddfrm,TPajakAddfrm);
end;

procedure Tfakturpajakfrm.RefreshData1Click(Sender: TObject);
begin
    dm.fakturpajaklist.Refresh;
end;

end.
