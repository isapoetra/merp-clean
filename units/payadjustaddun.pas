unit payadjustaddun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  Tpayadjustaddfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  payadjustaddfrm: Tpayadjustaddfrm;

implementation

{$R *.dfm}

end.
