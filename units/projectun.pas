unit projectun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, baseform,
  ImgList, JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter, DB,  JvXPCore, JvXPButtons, DBCtrls,
  JvDBControls, JvExButtons, JvBitBtn;

type
  Tprojectfrm = class(TfrmBase)
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    procedure btneditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  projectfrm: Tprojectfrm;

implementation

uses dmun, fungsi_merp, projectaddun;
{$R *.dfm}

procedure Tprojectfrm.btneditClick(Sender: TObject);
begin
  dm.project.edit;
  aktifkanform(projectaddfrm, TProjectaddfrm);
end;

procedure Tprojectfrm.FormCreate(Sender: TObject);
begin
  inherited;
  setDataset(dm.customer);
end;

procedure Tprojectfrm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  hapus(dm.project);
end;

procedure Tprojectfrm.btnAddClick(Sender: TObject);
begin
  inherited;
  dm.project.Append;
  aktifkanform(projectaddfrm, TProjectaddfrm);
end;

end.

