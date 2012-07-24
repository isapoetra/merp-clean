unit mainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomizeDlg, ImgList, DBClientActns, DBActns, StdActns,
  ActnList, XPStyleActnCtrls, ActnMan, ActnMenus, ToolWin, ActnCtrls,
  StdStyleActnCtrls, ComCtrls, baseForm, DB, ExtCtrls, loginform, JvPageList,
  JvNavigationPane, JvExControls, JvExComCtrls, JvCoolBar, JvStatusBar,
  JvExExtCtrls, JvNetscapeSplitter, gnugettext, StdCtrls, JvExStdCtrls,
  JvButton, JvCtrls, JvComponentBase, JvPoweredBy, ActnColorMaps, Buttons,
  JvExForms, JvScrollBox, JvTabBar;
resourcestring
  asklogout = 'Do you want to logout ?';
type
  TfrmMain = class(TForm)
    ActionToolBar1: TActionToolBar;
    mainmenu: TActionMainMenuBar;
    ActionManager1: TActionManager;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    HelpContents1: THelpContents;
    HelpTopicSearch1: THelpTopicSearch;
    HelpOnHelp1: THelpOnHelp;
    HelpContextAction1: THelpContextAction;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Action1: TAction;
    FileExit1: TFileExit;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ClientDataSetApply1: TClientDataSetApply;
    ClientDataSetRevert1: TClientDataSetRevert;
    ClientDataSetUndo1: TClientDataSetUndo;
    actBarang: TAction;
    Action3: TAction;
    Action4: TAction;
    ImageList1: TImageList;
    CustomizeDlg1: TCustomizeDlg;
    dsMain: TDataSource;
    sidebar: TJvNavigationPane;
    tbmaster: TJvNavPanelPage;
    JvNavPanelPage2: TJvNavPanelPage;
    JvNavPanelPage3: TJvNavPanelPage;
    splside: TJvNetscapeSplitter;
    JvStatusBar1: TJvStatusBar;
    actLogin: TAction;
    actShowHideSide: TAction;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    actMasterJasa: TAction;
    actMasterGudang: TAction;
    actMasterSuplier: TAction;
    actMasterCustomer: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    JvScrollBox1: TJvScrollBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    actMasterCat: TAction;
    actMasterProj: TAction;
    Button1: TButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    mdiTab: TJvTabBar;
    Button2: TButton;
    actShowHideDashboard: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actLoginUpdate(Sender: TObject);
    procedure checkAuth(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actShowHideSideExecute(Sender: TObject);
    procedure actBarangExecute(Sender: TObject);
    procedure actMasterJasaExecute(Sender: TObject);
    procedure actMasterGudangExecute(Sender: TObject);
    procedure actMasterSuplierExecute(Sender: TObject);
    procedure actMasterCustomerExecute(Sender: TObject);
    procedure actMasterCatExecute(Sender: TObject);
    procedure actMasterProjExecute(Sender: TObject);
    procedure mdiTabTabCloseQuery(Sender: TObject; Item: TJvTabBarItem;
      var CanClose: Boolean);
    procedure mdiTabTabClosed(Sender: TObject; Item: TJvTabBarItem);
    procedure mdiTabTabSelected(Sender: TObject; Item: TJvTabBarItem);
    procedure actShowHideDashboardExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure doLogin();
    procedure showForm(form: TFormClass);
    procedure ChildDatasetChanged(Sender: TObject);
    procedure WMMDIACTIVATE(var msg: TWMMDIACTIVATE); message WM_MDIACTIVATE;
    procedure closeForm(form: TFormClass);
  public
    { Public declarations }
    procedure setActiveForm(frm: TfrmBase);
    procedure MDIChildCreated(const childHandle: THandle);
    procedure MDIChildDestroyed(const childHandle: THandle);
    procedure MDIChildActivated(const childHandle: THandle);
  end;

var
  frmMain: TfrmMain;

implementation
uses helper, acl, barangmstrun, grouplistun, userlistun, passchangeun,
  categorilistun, supplierun, customerun, belisupun, polistun, jualun,
  gudangun, gudangaddun, inventoryun, invoicelistun, deliveryun, akunun,
  neracaun, projectun, penawaranun, foot_globalun, labarugiun, glun,
  karyawanun, jobdesun, salary_levelun, ptkpun, deptun, bankun, pphun,
  salaryinputun, salaryleveltambahun, penguranggajiun, salaryrptun,
  jurnalumumun, dolistun, tagihanun, datacleanun, jurnalumumlistun,
  penjualanrptun, projectlapun, fakturpajakviewun, jasaun, fakturpajakun,
  dashboardform;
{$R *.dfm}

procedure TfrmMain.MDIChildDestroyed(const childHandle: THandle);
var
  idx, i: Integer;
begin
  i := -1;
  for idx := 0 to mdiTab.Tabs.Count - 1 do
    if mdiTab.Tabs.Items[idx].Data = TObject(childHandle) then
    begin
      i := idx;
      break;
    end;
  if i <> -1 then
    mdiTab.Tabs.Delete(i);
end;

procedure TfrmMain.MDIChildActivated(const childHandle: THandle);
var
  idx, i: Integer;
begin
  i := -1;
  for idx := 0 to mdiTab.Tabs.Count - 1 do
    if mdiTab.Tabs.Items[idx].Data = TObject(childHandle) then
    begin
      i := idx;
      break;
    end;
  if i <> -1 then
    mdiTab.Tabs.Items[idx].Selected := true;
end;

procedure TfrmMain.MDIChildCreated(const childHandle: THandle);
var
  item: TJvTabBarItem;
begin
  item := mdiTab.Tabs.Add as TJvTabBarItem;
  item.Data := TObject(childHandle);
  item.Caption := TForm(FindControl(childHandle)).Caption;
  item.Selected := true;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  helper.initialize(self);
  self.Caption := helper.getAppName;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
 if (not acl.isAuthentificated) then
    doLogin();
end;

procedure TfrmMain.setActiveForm(frm: TfrmBase);
begin
  frm.OnDatasetChanged := self.ChildDatasetChanged;
  dsMain.DataSet := frm.DataSet;
end;

procedure TfrmMain.actLoginUpdate(Sender: TObject);
begin
  if (acl.isAuthentificated) then
    actLogin.Caption := _('Logout')
  else
    actLogin.Caption := _('Login')
end;

procedure TfrmMain.checkAuth(Sender: TObject);
begin
  (sender as TAction).Enabled := acl.isAuthentificated;
end;

procedure TfrmMain.actLoginExecute(Sender: TObject);
var
  i: integer;
begin
  if (acl.isAuthentificated) then
  begin
    if (MessageDlg(asklogout, mtConfirmation, [mbYes, mbNo], -1) = mrYes) then
    begin
      for i := 0 to self.MDIChildCount - 1 do
        self.MDIChildren[i].Close;

      acl.logout();
      doLogin();
    end;
  end
  else
    doLogin();

end;

procedure TfrmMain.doLogin;
var
  dlg: TFrmLogin;
begin
  helper.initialize(self);
  dlg := TFrmLogin.create(self);
  if (dlg.showModal() = mrOk) then
  begin
    showform(TFrmDashboard);
  end;
end;

procedure TfrmMain.actShowHideSideExecute(Sender: TObject);
begin
  splside.visible := actShowHideSide.Checked;
  sidebar.Visible := actShowHideSide.Checked;
end;

procedure TfrmMain.actBarangExecute(Sender: TObject);
begin
  showForm(TBarangMstrFrm);
end;

procedure TfrmMain.closeForm(form: TFormClass);
var
  i: integer;
begin
  for i := 0 to self.MDIChildCount - 1 do
  begin
    if MDIChildren[i].ClassName = form.ClassName then
    begin
      MDIChildren[i].Close;
    end;
  end;
end;

procedure TfrmMain.showForm(form: TFormClass);
var
  i: integer;
  found: boolean;
  frm: TForm;
begin
  found := false;
  for i := 0 to self.MDIChildCount - 1 do
  begin
    if MDIChildren[i].ClassName = form.ClassName then
    begin
      MDIChildActivated(MDIChildren[i].Handle);
      found := true;
      break;
    end;
  end;
  if (not found) then
  begin
    if acl.isAllow(form.ClassName, aclRead) then
    begin
      frm := form.Create(self);
      frm.FormStyle := fsMDIChild;
      frm.WindowState := wsMaximized;
      frm.Show;
    end;
  end;
end;

procedure TfrmMain.ChildDatasetChanged(Sender: TObject);
begin

end;

procedure TfrmMain.actMasterJasaExecute(Sender: TObject);
begin
  showForm(TJasafrm);
end;

procedure TfrmMain.actMasterGudangExecute(Sender: TObject);
begin
  showForm(TGudangfrm);
end;

procedure TfrmMain.actMasterSuplierExecute(Sender: TObject);
begin
  showForm(TSupplierFrm);
end;

procedure TfrmMain.actMasterCustomerExecute(Sender: TObject);
begin
  showForm(TCustomerFrm);
end;

procedure TfrmMain.actMasterCatExecute(Sender: TObject);
begin
  showForm(TKategorifrm);
end;

procedure TfrmMain.actMasterProjExecute(Sender: TObject);
begin
  showForm(TProjectfrm);
end;

procedure TfrmMain.mdiTabTabCloseQuery(Sender: TObject;
  Item: TJvTabBarItem; var CanClose: Boolean);
var
  form: TfrmBase;
begin
  form := TfrmBase(FindControl(THandle(item.Data)));
  if Assigned(form) then
    canClose := form.CloseQuery;

end;

procedure TfrmMain.mdiTabTabClosed(Sender: TObject; Item: TJvTabBarItem);
var
  form: TfrmBase;
begin
  form := TfrmBase(FindControl(THandle(item.Data)));
  if Assigned(form) then
    form.close();
end;

procedure TfrmMain.WMMDIACTIVATE(var msg: TWMMDIACTIVATE);
var
  active: TWinControl;
begin
  active := FindControl(msg.ActiveWnd);
  if Assigned(active) then
  begin
    MDIChildActivated(msg.ActiveWnd);
  end;
end;

procedure TfrmMain.mdiTabTabSelected(Sender: TObject; Item: TJvTabBarItem);
var
  form: TfrmBase;
begin
  try
    form := TfrmBase(FindControl(THandle(item.Data)));
    if Assigned(form) and form.Visible then
      SendMessage(ClientHandle, WM_MDIACTIVATE, form.Handle, 0);
  except
  end;
end;

procedure TfrmMain.actShowHideDashboardExecute(Sender: TObject);
begin
  if actShowHideDashboard.Checked then
    showform(TFrmDashboard)
  else
    closeForm(TFrmDashboard);

end;

end.

