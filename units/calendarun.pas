unit calendarun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tcalendarfrm = class(TForm)
    kalender: TMonthCalendar;
    Label2: TLabel;
    procedure kalenderDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calendarfrm: Tcalendarfrm;

implementation

uses dmun;

{$R *.dfm}

procedure Tcalendarfrm.kalenderDblClick(Sender: TObject);
begin
  dm.beli.FieldByName('be_due').Value := kalender.Date;
  close;
end;

end.
