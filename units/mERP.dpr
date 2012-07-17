program mERP;

uses
  Forms,
  utamaun in '..\units\utamaun.pas' {utamafrm},
  dmun in '..\units\dmun.pas' {dm: TDataModule},
  userlistun in '..\units\userlistun.pas' {userlistfrm},
  dsun in '..\units\dsun.pas' {ds: TDataModule},
  grouplistun in '..\units\grouplistun.pas' {groupfrm},
  groupaddun in '..\units\groupaddun.pas' {groupaddfrm},
  useraddun in '..\units\useraddun.pas' {useraddfrm},
  passchangeun in '..\units\passchangeun.pas' {passchangefrm},
  barangmstrun in '..\units\barangmstrun.pas' {barangmstrfrm},
  barangaddun in '..\units\barangaddun.pas' {barangaddfrm},
  kategorilistun in '..\units\kategorilistun.pas' {kategorifrm},
  listrep in '..\units\listrep.pas' {listrepfrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'mERP Ver 1.0';
  Application.CreateForm(Tutamafrm, utamafrm);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tds, ds);
  Application.CreateForm(Tbarangmstrfrm, barangmstrfrm);
  Application.CreateForm(Tbarangaddfrm, barangaddfrm);
  Application.CreateForm(Tkategorifrm, kategorifrm);
  Application.CreateForm(Tlistrepfrm, listrepfrm);
  Application.Run;
end.
