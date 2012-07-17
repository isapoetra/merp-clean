unit belilsgun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  Tbelilsgfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    dbtgl: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    po: TDBEdit;
    Label3: TLabel;
    looksupp: TDBLookupComboBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  belilsgfrm: Tbelilsgfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tbelilsgfrm.SpeedButton2Click(Sender: TObject);
begin
 dbtgl.Enabled := true;
end;

procedure Tbelilsgfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.supplier);
  aktifkandata(dm.beli_lsg);
  aktifkandata(dm.beli_lsgdetail);
end;

procedure Tbelilsgfrm.btntambahClick(Sender: TObject);
begin
 btnsimpan.Visible := true;
 btnbatal.Visible  := true;
end;

procedure Tbelilsgfrm.btnsimpanClick(Sender: TObject);
begin
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tbelilsgfrm.btnbatalClick(Sender: TObject);
begin
  btnsimpan.Visible := false;
 btnbatal.Visible  := false;

end;

end.
