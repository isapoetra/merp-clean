unit bankaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tbankaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    mulaikerja: TDBEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bankaddfrm: Tbankaddfrm;

implementation
 uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tbankaddfrm.btnsimpanClick(Sender: TObject);
begin
 simpan(dm.bank);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tbankaddfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.bank);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tbankaddfrm.btntambahClick(Sender: TObject);
begin
  dm.bank.Append;
  btnsimpan.Visible := true;
  btnbatal.Visible  := true;
end;

end.
