unit salaryleveladdun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, Grids,
  DBGrids;

type
  Tsalaryleveladdfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    mulaikerja: TDBEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnbatal: TSpeedButton;
    btnsimpan: TSpeedButton;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryleveladdfrm: Tsalaryleveladdfrm;

implementation
 uses dmun,fungsi_merp, salaryleveltambahun, penguranggajiun;
{$R *.dfm}

procedure Tsalaryleveladdfrm.btnsimpanClick(Sender: TObject);
begin
if messagedlg('Simpan Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
 dm.salary_level.Edit;
 dm.salary_level.Post;
 dm.salary_level.ApplyUpdates;

 dm.salary_level_detail_t.Edit;
 dm.salary_level_detail_t.post;
 dm.salary_level_detail_t.ApplyUpdates;

 dm.salary_level_detail_k.Edit;
 dm.salary_level_detail_k.post;
 dm.salary_level_detail_k.ApplyUpdates;


 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
 end; 
end;

procedure Tsalaryleveladdfrm.btnbatalClick(Sender: TObject);
begin
 batal(dm.salary_level);
 btnsimpan.Visible := false;
 btnbatal.Visible  := false;
end;

procedure Tsalaryleveladdfrm.btntambahClick(Sender: TObject);
begin
  dm.salary_level.Append;
  btnsimpan.Visible  := true;
  btnbatal.Visible   := true;
end;

procedure Tsalaryleveladdfrm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
   aktifkanform(salaryleveltambahfrm,Tsalaryleveltambahfrm);
 end;

 if key=vk_delete then
 begin
   hapus(dm.salary_level_detail_t);
 end;

end;

procedure Tsalaryleveladdfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.salary_level);
 aktifkandata(dm.salary_level_detail_t);
 aktifkandata(dm.salary_level_detail_k);
end;

procedure Tsalaryleveladdfrm.Panel2Enter(Sender: TObject);
begin
 dm.salary_level.Edit;
end;

procedure Tsalaryleveladdfrm.Panel2Exit(Sender: TObject);
begin
 
 dm.salary_level.Post;
end;

procedure Tsalaryleveladdfrm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
   aktifkanform(penguranggajifrm,TPengurangGajifrm);
 end;

 if key=vk_delete then
 begin
   hapus(dm.salary_level_detail_k);
 end;
end;

end.
