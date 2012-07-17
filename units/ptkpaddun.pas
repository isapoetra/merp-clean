unit ptkpaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tptkpaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    mulaikerja: TDBEdit;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ptkpaddfrm: Tptkpaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tptkpaddfrm.btnsimpanClick(Sender: TObject);
begin
  simpan(dm.ptkp);
  btnsimpan.Visible := false;
  btnbatal.Visible := false;
end;

procedure Tptkpaddfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.ptkp);
  btnsimpan.Visible := false;
  btnbatal.Visible  := false;
end;

procedure Tptkpaddfrm.btntambahClick(Sender: TObject);
begin
 dm.ptkp.Append;
 btnsimpan.Visible := true;
 btnbatal.Visible := true;
end;

end.
