unit jabatanaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tjabatanaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    Panel2: TPanel;
    mulaikerja: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jabatanaddfrm: Tjabatanaddfrm;

implementation
uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tjabatanaddfrm.btnsimpanClick(Sender: TObject);
begin
  simpan(dm.jobdes);
  btnsimpan.Visible := false;
  btnbatal.Visible := false;

end;

procedure Tjabatanaddfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.jobdes);
  btnsimpan.Visible := false;
  btnbatal.Visible := false;
end;

procedure Tjabatanaddfrm.btntambahClick(Sender: TObject);
begin
  btnsimpan.Visible := true;
  btnbatal.Visible := true;
  dm.jobdes.Append;
end;

end.
