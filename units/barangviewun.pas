unit barangviewun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  Tbarangviewfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    gridview: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridviewKeyPress(Sender: TObject; var Key: Char);
    procedure gridviewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure isiToBeli;
    procedure isiToPenawaran;
  public
    { Public declarations }
  end;

var
  barangviewfrm: Tbarangviewfrm;

implementation

uses dmun,fungsi_merp,db;

{$R *.dfm}

procedure Tbarangviewfrm.SpeedButton1Click(Sender: TObject);
begin
 cari.Clear;
end;

procedure Tbarangviewfrm.isiToBeli;
begin

  dm.belidetail.edit;
  dm.belidetail.FieldByName('bd_kd_barang').Value        :=  dm.barang.fieldbyname('br_id').Value;
  dm.belidetail.FieldByName('bd_nama_barang').Value      := dm.barang.fieldbyname('br_nama').Value;
  dm.belidetail.Post;
  close;
end;

procedure Tbarangviewfrm.isiToPenawaran;
begin

  dm.penawaran_detail.edit;
  dm.penawaran_detail.FieldByName('qd_kd_barang').Value        :=  dm.barang.fieldbyname('br_id').Value;
  dm.penawaran_detail.FieldByName('qd_nama_barang').Value      :=  dm.barang.fieldbyname('br_nama').Value;
  dm.penawaran_detail.FieldByName('qd_type').Value             :=  dm.barang.fieldbyname('br_type').Value;
  dm.penawaran_detail.FieldByName('qd_unit').Value             :=  dm.barang.fieldbyname('br_unit').Value;
  dm.penawaran_detail.FieldByName('qd_tgl').Value              :=  date;
  dm.penawaran_detail.Post;
  close;
end;

procedure Tbarangviewfrm.FormActivate(Sender: TObject);
begin
 cari.SetFocus;
end;

procedure Tbarangviewfrm.cariChange(Sender: TObject);
begin
 with dm.barang do
 begin
   sql.Text := 'SELECT * FROM barang WHERE br_nama LIKE (:br) OR br_type like (:br) ORDER BY br_id DESC ';
   params.ParamByName('br').Value := '%'+cari.Text+'%';
   open;
 end;
end;

procedure Tbarangviewfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.barang);
end;

procedure Tbarangviewfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_down then
 begin
   gridview.SetFocus;
   dm.barang.Next;
 end;
 if key=vk_return then isiToBeli;
end;

procedure Tbarangviewfrm.gridviewKeyPress(Sender: TObject; var Key: Char);
begin
  if  (key in['0'..'9']) or (key in['a'..'z','A'..'Z']) then
begin
  cari.SetFocus;
  cari.Clear;
  cari.text:=key;
  cari.SelStart :=1;
end;
end;

procedure Tbarangviewfrm.gridviewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
  if isPenawaran = 1 then
  begin
    isiToPenawaran;
  end else
  begin
   isitoBeli;
  end; 
 end;
end;

end.
