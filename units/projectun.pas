unit projectun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tprojectfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    caripn: TPanel;
    Label2: TLabel;
    cari: TEdit;
    Panel3: TPanel;
    btnedit: TSpeedButton;
    btntambah: TSpeedButton;
    btnhapus: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  projectfrm: Tprojectfrm;

implementation

uses dmun,fungsi_merp, projectaddun;
{$R *.dfm}

procedure Tprojectfrm.btntambahClick(Sender: TObject);
begin
  dm.project.Append;
  aktifkanform(projectaddfrm,TProjectaddfrm);
end;

procedure Tprojectfrm.btneditClick(Sender: TObject);
begin
  dm.project.edit;
  aktifkanform(projectaddfrm,TProjectaddfrm);
end;

procedure Tprojectfrm.btnhapusClick(Sender: TObject);
begin
  hapus(dm.project);
end;

procedure Tprojectfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.customer);
end;

end.
