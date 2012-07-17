unit ptkpun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tptkpfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    cari: TEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnedit: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ptkpfrm: Tptkpfrm;

implementation
uses dmun,fungsi_merp, ptkpaddun;
{$R *.dfm}

procedure Tptkpfrm.btntambahClick(Sender: TObject);
begin
 dm.ptkp.Append;
 aktifkanform(ptkpAddfrm,TptkpAddfrm);
end;

procedure Tptkpfrm.btneditClick(Sender: TObject);
begin
 dm.ptkp.edit;
 aktifkanform(ptkpAddfrm,TptkpAddfrm);
end;

procedure Tptkpfrm.SpeedButton1Click(Sender: TObject);
begin
 hapus(dm.ptkp);
end;

end.
