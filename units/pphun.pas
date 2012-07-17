unit pphun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tpphfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pphfrm: Tpphfrm;

implementation
uses dmun,fungsi_merp, pphaddun;
{$R *.dfm}

procedure Tpphfrm.btntambahClick(Sender: TObject);
begin
 dm.pph.Append;
 aktifkanform(pphaddfrm,tpphaddfrm);
end;

procedure Tpphfrm.btneditClick(Sender: TObject);
begin
 dm.pph.edit;
 aktifkanform(pphaddfrm,tpphaddfrm);
end;

procedure Tpphfrm.SpeedButton1Click(Sender: TObject);
begin
 hapus(dm.pph);
end;

procedure Tpphfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.pph);
end;

end.
