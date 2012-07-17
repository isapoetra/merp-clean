unit jasaaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tjasaaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    namadepan: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btnbatal: TSpeedButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jasaaddfrm: Tjasaaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tjasaaddfrm.btnsimpanClick(Sender: TObject);
begin
if messagedlg('Simpan Record?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
 dm.jasa.Post;
 dm.jasa.ApplyUpdates;
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end; 
end;

procedure Tjasaaddfrm.btnbatalClick(Sender: TObject);
begin
if messagedlg('Batalkan Record?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
 dm.jasa.CancelUpdates;
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;
end;

procedure Tjasaaddfrm.btntambahClick(Sender: TObject);
begin
 dm.jasa.Append;
 btnsimpan.Visible := true;
 btnbatal.Visible := true;
end;

end.
