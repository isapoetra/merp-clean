unit jasaun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tjasafrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btnedit: TSpeedButton;
    btntambah: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    cari: TEdit;
    Label2: TLabel;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cariChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure isiTojual;
  public
    { Public declarations }
  end;

var
  jasafrm: Tjasafrm;

implementation

uses dmun,fungsi_merp, jasaaddun;
{$R *.dfm}

procedure Tjasafrm.isiToJual;
begin
   dm.jualdetail.Append;
   dm.jualdetail.FieldByName('jd_kd_barang').Value        := dm.jasa.fieldbyname('js_id').Value;
   dm.jualdetail.FieldByName('jd_nama_barang').Value      := dm.jasa.fieldbyname('js_nama').Value;
   dm.jualdetail.FieldByName('jd_harga_pokok').Value      := 0;
   dm.jualdetail.FieldByName('jd_satuan').Value           := dm.jasa.fieldbyname('js_unit').Value;
   dm.jualdetail.FieldByName('jd_harga_jual').Value       := dm.jasa.fieldbyname('js_tarif').Value;
   close;
end;

procedure Tjasafrm.btntambahClick(Sender: TObject);
begin
  dm.jasa.Append;
  aktifkanform(jasaaddfrm,TJasaAddfrm);
end;

procedure Tjasafrm.btneditClick(Sender: TObject);
begin
  dm.jasa.edit;
  aktifkanform(jasaaddfrm,TJasaAddfrm);
end;

procedure Tjasafrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.jasa);
end;

procedure Tjasafrm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if  (key in['0'..'9']) or (key in['a'..'z','A'..'Z']) then
begin
  cari.SetFocus;
  cari.Clear;
  cari.text:=key;
  cari.SelStart :=1;
end;
end;

procedure Tjasafrm.cariChange(Sender: TObject);
begin
 with dm.jasa do
 begin
   sql.Text := 'select * from jasa where js_nama like (:js) ';
   params.ParamByName('js').Value := '%'+cari.Text+'%';
   open;
 end;
end;

procedure Tjasafrm.FormActivate(Sender: TObject);
begin
 if isJual = 1 then
 begin
    btntambah.Visible := false;
    btnedit.Visible   := false;
 end;
end;

procedure Tjasafrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if isJual = 1 then
  begin
    if key=vk_return then isiToJual;
  end; // end isJual
end;

end.
