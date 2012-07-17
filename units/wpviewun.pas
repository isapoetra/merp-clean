unit wpviewun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  Twpviewfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  procedure insertToPajak;
  public
    { Public declarations }
  end;

var
  wpviewfrm: Twpviewfrm;

implementation

uses dmun,fungsi_merp, pajakaddun;
{$R *.dfm}

procedure Twpviewfrm.insertToPajak;
begin
  generateFakturPajak;
  dm.pajakinsert.Append;
  dm.pajakinsert.FieldByName('fp_npwp').Value      := dm.wpview.fieldbyname('cu_npwp').Value;
  dm.pajakinsert.FieldByName('fp_nama_cust').Value := dm.wpview.fieldbyname('cu_nama').Value;
  dm.pajakinsert.FieldByName('fp_kode').Value      := gNoFaktur; // diambil dari variabel global hasil procedure generate faktur pajak
  dm.pajakinsert.FieldByName('fp_cust_kode').Value := dm.wpview.fieldbyname('cu_kode').Value;
  close;
end;

procedure Twpviewfrm.DBGrid1DblClick(Sender: TObject);
begin
 insertToPajak;
end;

procedure Twpviewfrm.BitBtn1Click(Sender: TObject);
begin
  insertToPajak;
end;

end.
