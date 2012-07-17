unit deptun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tdeptfrm = class(TForm)
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  deptfrm: Tdeptfrm;

implementation
uses dmun,fungsi_merp, deptaddun;
{$R *.dfm}

procedure Tdeptfrm.SpeedButton1Click(Sender: TObject);
begin
 hapus(dm.dept);
end;

procedure Tdeptfrm.btntambahClick(Sender: TObject);
begin
  dm.dept.Append;
  aktifkanform(deptaddfrm,TDeptAddfrm);
end;

procedure Tdeptfrm.btneditClick(Sender: TObject);
begin
 dm.dept.edit;
  aktifkanform(deptaddfrm,TDeptAddfrm);
end;

end.
