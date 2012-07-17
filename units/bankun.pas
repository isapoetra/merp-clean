unit bankun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tbankfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure btntambahClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bankfrm: Tbankfrm;

implementation

uses dmun,fungsi_merp, bankaddun;
{$R *.dfm}

procedure Tbankfrm.btntambahClick(Sender: TObject);
begin
  dm.bank.Append;
  aktifkanform(bankaddfrm,TBankaddfrm);
end;

procedure Tbankfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.bank);
end;

procedure Tbankfrm.btneditClick(Sender: TObject);
begin
  dm.bank.edit;
  aktifkanform(bankaddfrm,TBankaddfrm);
end;

procedure Tbankfrm.SpeedButton2Click(Sender: TObject);
begin
  hapus(dm.bank);
end;

end.
