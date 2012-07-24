program mERP;
{$DEFINE DXGETTEXTDEBUG}

uses
  Controls,
  Forms,
  SysUtils,
  acl in 'units\acl.pas',
  utamaun in 'units\utamaun.pas' {utamafrm},
  dmun in 'units\dmun.pas' {dm: TDataModule},
  userlistun in 'units\userlistun.pas' {userlistfrm},
  dsun in 'units\dsun.pas' {ds: TDataModule},
  grouplistun in 'units\grouplistun.pas' {groupfrm},
  groupaddun in 'units\groupaddun.pas' {groupaddfrm},
  useraddun in 'units\useraddun.pas' {useraddfrm},
  passchangeun in 'units\passchangeun.pas' {passchangefrm},
  barangmstrun in 'units\barangmstrun.pas' {barangmstrfrm},
  barangaddun in 'units\barangaddun.pas' {barangaddfrm},
  listrep in 'units\listrep.pas' {listrepfrm},
  categorilistun in 'units\categorilistun.pas' {kategorifrm},
  rep_add_frm in 'units\rep_add_frm.pas' {add_rep_frm},
  kategoriaddun in 'units\kategoriaddun.pas' {kategoriaddfrm},
  fungsi_merp in 'units\fungsi_merp.pas',
  supplierun in 'units\supplierun.pas' {supplierfrm},
  supplieraddun in 'units\supplieraddun.pas' {supplieraddfrm},
  customerun in 'units\customerun.pas' {customerfrm},
  customeraddun in 'units\customeraddun.pas' {customeraddfrm},
  belisupun in 'units\belisupun.pas' {belisupfrm},
  supplierpicun in 'units\supplierpicun.pas' {supplierpicfrm},
  supp_pic_addun in 'units\supp_pic_addun.pas' {supp_pic_addfrm},
  barangviewun in 'units\barangviewun.pas' {barangviewfrm},
  custpicun in 'units\custpicun.pas' {custpicfrm},
  custpicaddun in 'units\custpicaddun.pas' {custpicaddfrm},
  custandcpun in 'units\custandcpun.pas' {custncpfrm},
  calendarun in 'units\calendarun.pas' {calendarfrm},
  polistun in 'units\polistun.pas' {polistfrm},
  jualun in 'units\jualun.pas' {jualfrm},
  footnoteun in 'units\footnoteun.pas' {footnotefrm},
  gudangun in 'units\gudangun.pas' {gudangfrm},
  gudangaddun in 'units\gudangaddun.pas' {gudangaddfrm},
  inventoryun in 'units\inventoryun.pas' {inventoryfrm},
  gudangpickun in 'units\gudangpickun.pas' {gudangpickfrm},
  jatuhtempoun in 'units\jatuhtempoun.pas' {jatuhtempofrm},
  inventoryviewun in 'units\inventoryviewun.pas' {inventoryviewfrm},
  invoicelistun in 'units\invoicelistun.pas' {invoicelistfrm},
  deliveryun in 'units\deliveryun.pas' {deliveryfrm},
  orderdetailun in 'units\orderdetailun.pas' {detailorderfrm},
  projectun in 'units\projectun.pas' {projectfrm},
  projectaddun in 'units\projectaddun.pas' {projectaddfrm},
  akunun in 'units\akunun.pas' {akunfrm},
  neracaun in 'units\neracaun.pas' {neracafrm},
  penawaranun in 'units\penawaranun.pas' {penawaranfrm},
  foot_globalun in 'units\foot_globalun.pas' {footnote_globalfrm},
  labarugiun in 'units\labarugiun.pas' {labarugifrm},
  glun in 'units\glun.pas' {glfrm},
  karyawanun in 'units\karyawanun.pas' {karyawanfrm},
  karyawanaddun in 'units\karyawanaddun.pas' {karyawanaddfrm},
  payadjustmentun in 'units\payadjustmentun.pas' {payadjustmentfrm},
  payadjustaddun in 'units\payadjustaddun.pas' {payadjustaddfrm},
  progressun in 'units\progressun.pas' {progressfrm},
  jobdesun in 'units\jobdesun.pas' {jobdesfrm},
  jabatanaddun in 'units\jabatanaddun.pas' {jabatanaddfrm},
  salary_levelun in 'units\salary_levelun.pas' {salarylevelfrm},
  salaryleveladdun in 'units\salaryleveladdun.pas' {salaryleveladdfrm},
  bankun in 'units\bankun.pas' {bankfrm},
  bankaddun in 'units\bankaddun.pas' {bankaddfrm},
  ptkpun in 'units\ptkpun.pas' {ptkpfrm},
  ptkpaddun in 'units\ptkpaddun.pas' {ptkpaddfrm},
  deptun in 'units\deptun.pas' {deptfrm},
  deptaddun in 'units\deptaddun.pas' {deptaddfrm},
  pphun in 'units\pphun.pas' {pphfrm},
  pphaddun in 'units\pphaddun.pas' {pphaddfrm},
  salaryinputun in 'units\salaryinputun.pas' {salaryinputfrm},
  salary_prosesun in 'units\salary_prosesun.pas' {salaryprosesfrm},
  salaryleveldetailun in 'units\salaryleveldetailun.pas' {salaryleveldetailfrm},
  salaryleveltambahun in 'units\salaryleveltambahun.pas' {salaryleveltambahfrm},
  salary_level_tambahaddun in 'units\salary_level_tambahaddun.pas' {salaryleveltambahaddfrm},
  penguranggajiun in 'units\penguranggajiun.pas' {penguranggajifrm},
  penguranggajiaddun in 'units\penguranggajiaddun.pas' {penguranggajiaddfrm},
  salaryrptun in 'units\salaryrptun.pas' {salaryrptfrm},
  jurnalumumun in 'units\jurnalumumun.pas' {jurnalumumfrm},
  akunviewun in 'units\akunviewun.pas' {akunviewfrm},
  dolistun in 'units\dolistun.pas' {dolistfrm},
  cobagit in 'units\cobagit.pas',
  fakturdaninvoiceun in 'units\fakturdaninvoiceun.pas' {invoicprintfrm},
  tagihanun in 'units\tagihanun.pas' {tagihanfrm},
  akuntansi in 'units\akuntansi.pas',
  lunaspiutangun in 'units\lunaspiutangun.pas' {lunaspiutangfrm},
  datacleanun in 'units\datacleanun.pas' {datacleanfrm},
  jurnalumumlistun in 'units\jurnalumumlistun.pas' {jurnalumumlistfrm},
  penjualanrptun in 'units\penjualanrptun.pas' {jualrptfrm},
  projectlapun in 'units\projectlapun.pas' {projectlapfrm},
  fakturpajakviewun in 'units\fakturpajakviewun.pas' {fakturpajakviewfrm},
  jasaun in 'units\jasaun.pas' {jasafrm},
  jasaaddun in 'units\jasaaddun.pas' {jasaaddfrm},
  pajakaddun in 'units\pajakaddun.pas' {pajakAddfrm},
  wpviewun in 'units\wpviewun.pas' {wpviewfrm},
  fakturpajakun in 'units\fakturpajakun.pas' {fakturpajakfrm},
  invoiceamountun in 'units\invoiceamountun.pas' {invoiceamountfrm},
  tanggalubahun in 'units\tanggalubahun.pas' {tanggalubahfrm},
  Helper in 'units\Helper.pas',
  baseForm in 'units\baseForm.pas' {frmBase},
  mainform in 'units\mainform.pas' {frmMain},
  splashform in 'units\splashform.pas' {frmSplash},
  loginform in 'units\loginform.pas' {frmLogin},
  initform in 'units\initform.pas' {frmInit},
  configuration in 'units\configuration.pas',
  dashboardform in 'units\dashboardform.pas' {frmDashboard},
  gnugettext in 'units\gnugettext.pas',
  reportform in 'units\reportform.pas' {Form1};

{$R *.res}

var
  splash: TFrmSplash;
  ok: Boolean;

begin
  ok := true;
  UseLanguage('en');
  Application.Initialize;
  splash := TFrmSplash.create(nil);
  splash.Show();
  splash.setStatus('Loading...');
  // Application.Title := 'MIRP 1.0';
  Application.Title := 'mERP';

  if (not FileExists(ChangeFileExt(Application.ExeName, '.ini'))) then
  begin
    splash.Hide;
    with (TfrmInit.create(nil)) do
      try
        if (ShowModal <> mrOk) then
          ok := false;
      finally
        Free;
      end;
  end;
  if (ok) then
  begin
    splash.Show;
    splash.setStatus('Connecting to database');
    Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tds, ds);
  Application.CreateForm(TForm1, Form1);
  splash.setStatus('Creating Main form');
    Application.CreateForm(TfrmMain, frmMain);
    splash.Free;
    Application.Run;
  end
  else
    splash.Free;

end.
