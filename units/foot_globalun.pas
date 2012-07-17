unit foot_globalun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tfootnote_globalfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  footnote_globalfrm: Tfootnote_globalfrm;

implementation

uses dmun, fungsi_merp;
{$R *.dfm}

procedure Tfootnote_globalfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.footnote_global);
end;

end.
