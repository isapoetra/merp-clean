unit akunviewun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;
                            
type
  Takunviewfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    gridakun: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridakunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridakunKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure isiToJurnalUmum;
  public
    { Public declarations }
  end;

var
  akunviewfrm: Takunviewfrm;

implementation

uses dmun,fungsi_merp, jurnalumumun;
{$R *.dfm}

procedure Takunviewfrm.isiToJurnalUmum;
begin
  aktifkandata(dm.jurnal_umum_detail);
   with dm.jurnal_umum_detail do
   begin
     edit;
     fieldbyname('jl_akun').Value := dm.akunview.fieldbyname('ak_no').Value;
     fieldbyname('jl_desc').Value := dm.akunview.fieldbyname('ak_desc').Value;
     post;    
   end;
  //
   close;
   
end;

procedure Takunviewfrm.FormActivate(Sender: TObject);
begin
   aktifkandata(dm.akunview);
end;

procedure Takunviewfrm.cariChange(Sender: TObject);
begin
  with dm.akunview do
  begin
   sql.Text := 'select * from akun where ak_desc like (:des) '+
   'order by ak_no asc ';
   params.ParamByName('des').Value := '%'+cari.Text+'%';
   open;
  end;
end;

procedure Takunviewfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_down then
 begin
    gridakun.SetFocus;
    dm.akunview.Next
 end;

 if key=vk_escape then close;

 if key=vk_return then
 begin
   isiToJurnalUmum;
 end;

end;

procedure Takunviewfrm.gridakunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_return then
 begin
   isiToJurnalUmum;
 end;

 if key=vk_escape then close;
 
end;

procedure Takunviewfrm.gridakunKeyPress(Sender: TObject; var Key: Char);
begin
   if  (key in['0'..'9']) or (key in['a'..'z','A'..'Z']) then
begin
  cari.SetFocus;
  cari.Clear;
  cari.text:=key;
  cari.SelStart :=1;
end;
end;

procedure Takunviewfrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_escape then close;
end;

end.
