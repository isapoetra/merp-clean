unit orderdetailun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls;

type
  Tdetailorderfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    procedure btntambahClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  detailorderfrm: Tdetailorderfrm;

implementation

uses gudangpickun,dmun,fungsi_merp;

{$R *.dfm}

procedure Tdetailorderfrm.btntambahClick(Sender: TObject);
begin
  if messagedlg('Simpan Barang ke Gudang?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
   aktifkanform(gudangpickfrm,TGudangPickfrm);
 end;
end;

procedure Tdetailorderfrm.FormActivate(Sender: TObject);
begin
 if isPost = 1 then
 begin
   btntambah.Visible := false;
 end else if isPost=0 then
 begin
   btntambah.Visible := true;
 end;

end;

end.
