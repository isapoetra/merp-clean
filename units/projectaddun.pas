unit projectaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  Tprojectaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    po: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  projectaddfrm: Tprojectaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tprojectaddfrm.FormCreate(Sender: TObject);
begin
 //aktifkandata(dm.customer);
end;

procedure Tprojectaddfrm.btnsimpanClick(Sender: TObject);
begin
  if btnsimpan.Caption = '&Simpan' then
  begin
     btnsimpan.Caption := '&Tambah';
     btnbatal.Visible  := false;
     simpan(dm.project);
  end else
  begin
     btnsimpan.Caption := '&Simpan';
     btnbatal.Visible  := true;
     dm.project.Append;
  end;
end;

procedure Tprojectaddfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.project);
  close;
end;

end.
