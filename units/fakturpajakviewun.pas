unit fakturpajakviewun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Buttons, Menus;

type
  Tfakturpajakviewfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    gridakun: TDBGrid;
    cbcust: TCheckBox;
    lookcust: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    popfaktur: TPopupMenu;
    RefreshPerbaharuiData1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure lookcustClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure RefreshPerbaharuiData1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fakturpajakviewfrm: Tfakturpajakviewfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tfakturpajakviewfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.fakturpajakview);
end;

procedure Tfakturpajakviewfrm.lookcustClick(Sender: TObject);
begin
 if cbcust.Checked = true then
 begin
   with dm.fakturpajakview do
   begin
     sql.Text := 'select * from fakturpajak where fp_cust_kode = (:kd) order by fp_id desc';
     params.ParamByName('kd').Value := lookcust.KeyValue;
     open;
   end; // end of fakturpajakview
 end;
end;

procedure Tfakturpajakviewfrm.SpeedButton1Click(Sender: TObject);
begin
 cbcust.Checked := false;
 cari.Clear;
 with dm.fakturpajakview do
 begin
   sql.Text := 'select * from fakturpajak order by fp_id desc ';
   open;

 end;
end;

procedure Tfakturpajakviewfrm.cariChange(Sender: TObject);
begin
 if cbcust.Checked = true then
 begin
  with dm.fakturpajakview do
  begin
    sql.Text := 'select * from fakturpajak where (fp_kode like (:fpkd) or '+
    'fp_ref like (:fpref)) and fp_cust_kode = (:custkd) order by fp_id desc ';
    params.ParamByName('fpkd').Value  := '%'+cari.Text+'%';
    params.paramByName('fpref').Value := '%'+cari.Text+'%';
    params.ParamByName('custkd').Value := lookcust.KeyValue;
    open;
  end;
 end else
 begin
   with dm.fakturpajakview do
  begin
    sql.Text := 'select * from fakturpajak where fp_kode like (:fpkd) or '+
    'fp_ref like (:fpref) order by fp_id desc ';
    params.ParamByName('fpkd').Value  := '%'+cari.Text+'%';
    params.paramByName('fpref').Value := '%'+cari.Text+'%';
    open;
  end;
 end; 
end;

procedure Tfakturpajakviewfrm.RefreshPerbaharuiData1Click(Sender: TObject);
begin
 dm.fakturpajak.Refresh;
end;

end.
