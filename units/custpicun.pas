unit custpicun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DBCtrls;

type
  Tcustpicfrm = class(Tlistrepfrm)
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
   // procedure generateCustPic;
  public
    { Public declarations }
  end;

var
  custpicfrm: Tcustpicfrm;

implementation

uses dmun,fungsi_merp, custpicaddun;

{$R *.dfm}


procedure Tcustpicfrm.FormCreate(Sender: TObject);
begin
  //inherited;
  aktifkandata(dm.custpic);
end;

procedure Tcustpicfrm.SpeedButton4Click(Sender: TObject);
begin
  //inherited;
  dm.custpic.Append;
  //generateCustPic;
  aktifkanform(custpicaddfrm,TCustpicaddfrm);
end;

procedure Tcustpicfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dm.customer.Edit;
  aktifkanform(custpicaddfrm,TCustpicaddfrm);
end;

procedure Tcustpicfrm.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  hapus(dm.customer);
end;

end.
