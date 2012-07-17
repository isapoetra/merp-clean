unit barangaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls;

type
  Tbarangaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btncari: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    namadepan: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    dbunit: TDBEdit;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barangaddfrm: Tbarangaddfrm;

implementation

uses dmun,fungsi_merp, categorilistun, supplierun;
{$R *.dfm}

procedure Tbarangaddfrm.FormCreate(Sender: TObject);
begin    
  aktifkandata(dm.supplier);
  aktifkandata(dm.kategori);
end;

procedure Tbarangaddfrm.SpeedButton5Click(Sender: TObject);
begin
  aktifkanform(kategorifrm,TKategorifrm);
end;

procedure Tbarangaddfrm.SpeedButton6Click(Sender: TObject);
begin
 aktifkanform(SupplierFrm,TSupplierFrm);
end;

procedure Tbarangaddfrm.SpeedButton4Click(Sender: TObject);
begin
   if speedbutton4.caption = '&Simpan' then
   begin
      simpan(dm.barang);
      speedbutton4.Caption := '&Tambah';
      speedbutton3.Visible := false;
   end else
   begin
      dm.barang.Append;
      speedbutton4.Caption := '&Simpan';
      speedbutton3.Visible := true;
   end;
end;

procedure Tbarangaddfrm.SpeedButton3Click(Sender: TObject);
begin
  batal(dm.barang);
  close;
end;

end.
