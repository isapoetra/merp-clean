unit deptaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tdeptaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    mulaikerja: TDBEdit;
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
  deptaddfrm: Tdeptaddfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tdeptaddfrm.btnsimpanClick(Sender: TObject);
begin
 simpan(dm.dept);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tdeptaddfrm.btnbatalClick(Sender: TObject);
begin
  batal(dm.dept);
  btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tdeptaddfrm.btntambahClick(Sender: TObject);
begin
  dm.dept.Append;
  btnsimpan.Visible := true;
  btnbatal.Visible  := true;
end;

end.
