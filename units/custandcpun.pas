unit custandcpun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tcustncpfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cari: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cariKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure isiToBeli;
  public
    { Public declarations }
  end;

var
  custncpfrm: Tcustncpfrm;

implementation

uses dmun, fungsi_merp, db;
{$R *.dfm}

procedure Tcustncpfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.customer);
  aktifkandataread(dm.custpicview);
end;

procedure Tcustncpfrm.isiToBeli;
begin
  { if dm.belidetail.State in [dsBrowse] then
    begin
    dm.belidetail.Append;
    end else
    begin
    dm.belidetail.Edit;
    end; }

  dm.belidetail.Edit;
  dm.belidetail.FieldByName('bd_sendto').value :=
    dm.customer.FieldByName('cu_id').AsString;
  dm.belidetail.FieldByName('bd_sendto_nama').value :=
    dm.customer.FieldByName('cu_nama').AsString;
  dm.belidetail.FieldByName('bd_up').value := dm.custpicview.FieldByName
    ('cp_id').AsString;
  dm.belidetail.Post;
  close;
end;

procedure Tcustncpfrm.cariChange(Sender: TObject);
begin
  with dm.customer do
  begin
    sql.Text :=
      'select * from customer where cu_nama like (:nama) order by cu_id DESC ';
    params.ParamByName('nama').value := '%' + cari.Text + '%';
    open;
  end;
end;

procedure Tcustncpfrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
end;

procedure Tcustncpfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
  if Key = vk_return then
    isiToBeli;
  if Key = vk_down then
  begin
    DBGrid1.SetFocus;
    dm.customer.Next;
  end;
end;

procedure Tcustncpfrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
  if Key = vk_return then
    isiToBeli;
end;

procedure Tcustncpfrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
  if Key = vk_return then
    isiToBeli;
end;

end.
