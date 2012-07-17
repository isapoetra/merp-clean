unit supplierpicun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls;

type
  Tsupplierpicfrm = class(Tlistrepfrm)
    DBText1: TDBText;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  supplierpicfrm: Tsupplierpicfrm;

implementation

uses dmun,fungsi_merp, supp_pic_addun;

{$R *.dfm}

procedure Tsupplierpicfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dm.supplierpic.Append;
  aktifkanform(supp_pic_addfrm,TSupp_pic_addfrm);
end;

procedure Tsupplierpicfrm.SpeedButton3Click(Sender: TObject);
begin
  //inherited;
  dm.supplierpic.Edit;
  aktifkanform(supp_pic_addfrm,TSupp_pic_addfrm);
end;

procedure Tsupplierpicfrm.SpeedButton5Click(Sender: TObject);
begin
  //inherited;
  hapus(dm.supplier);
end;

end.
