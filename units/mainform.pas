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
  JvExForms, JvScrollBox;

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
    JvCoolBar1: TJvCoolBar;
    actLogin: TAction;
    actShowHideSide: TAction;
    JvNavPaneStyleManager1: TJvNavPaneStyleManager;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
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
    procedure FormCreate(Sender: TObject);
    procedure actLoginUpdate(Sender: TObject);
    procedure checkAuth(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actShowHideSideExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actBarangExecute(Sender: TObject);
  private
    { Private declarations }
    procedure doLogin();
    procedure showForm(form: TFormClass);
    procedure ChildDatasetChanged(Sender: TObject);
  public
    { Public declarations }
    procedure setActiveForm(frm: TfrmBase);
  end;

var
  frmMain: TfrmMain;

implementation
uses helper, acl, barangmstrun;
{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  helper.initialize(self);
  self.Caption := helper.getAppName;
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
begin
  if (acl.isAuthentificated) then
  begin
    if (MessageDlg(_('asklogout'), mtConfirmation, [mbYes, mbNo], -1) = mrYes)
      then
    begin
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

  end;
end;

procedure TfrmMain.actShowHideSideExecute(Sender: TObject);
begin
  splside.visible := actShowHideSide.Checked;
  sidebar.Visible := actShowHideSide.Checked;

end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  if (not acl.isAuthentificated) then
    doLogin();
end;

procedure TfrmMain.actBarangExecute(Sender: TObject);
begin
  showForm(TBarangMstrFrm);
end;

procedure TfrmMain.showForm(form: TFormClass);
var
  i: integer;
  found: boolean;
  frm: TForm;
begin
  found := false;
  for i := 0 to self.MDIChildCount do
  begin
    if self.MDIChildren[i] is form then
    begin
      self.MDIChildren[i].SetFocus;
      found := true;
      break;
    end;
  end;
  if (not found) then
  begin
    if acl.isAllow(form.ClassName,aclRead) then
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

end.

