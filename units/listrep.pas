unit listrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, baseform,
  DB, ImgList, JvXPCore, JvXPButtons, DBCtrls, JvDBControls,
  JvExControls, JvScrollMax, JvExExtCtrls, JvExtComponent,
  JvNetscapeSplitter;

type
  Tlistrepfrm = class(TFrmBase)
    DBGrid1: TDBGrid;
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listrepfrm: Tlistrepfrm;

implementation

{$R *.dfm}

procedure Tlistrepfrm.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if messagedlg('Hapus Record ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
  end;
end;

end.
