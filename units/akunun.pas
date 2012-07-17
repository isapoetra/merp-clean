unit akunun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Takunfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  akunfrm: Takunfrm;

implementation

uses dmun, fungsi_merp;
{$R *.dfm}

procedure Takunfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.akun);
  aktifkandata(dm.akun_klas);
  aktifkandata(dm.akun_subklas);
end;

end.
