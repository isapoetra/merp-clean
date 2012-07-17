unit pphaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tpphaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mulaikerja: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pphaddfrm: Tpphaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tpphaddfrm.btnsimpanClick(Sender: TObject);
begin
 simpan(dm.pph);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tpphaddfrm.btnbatalClick(Sender: TObject);
begin
 batal(dm.pph);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tpphaddfrm.btntambahClick(Sender: TObject);
begin
 dm.pph.Append;
 btnsimpan.Visible := true;
 btnbatal.Visible  := true;
end;

end.
