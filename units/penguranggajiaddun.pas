unit penguranggajiaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tpenguranggajiaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    kd: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  penguranggajiaddfrm: Tpenguranggajiaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tpenguranggajiaddfrm.btnsimpanClick(Sender: TObject);
begin
 simpan(dm.penguranggaji);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;

end;

procedure Tpenguranggajiaddfrm.btntambahClick(Sender: TObject);
begin
 dm.penguranggaji.Append;
 btnsimpan.Visible := true;
 btnbatal.Visible  := true;
end;

procedure Tpenguranggajiaddfrm.btnbatalClick(Sender: TObject);
begin
 batal(dm.penguranggaji);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

end.
