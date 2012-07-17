unit salaryinputun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls, ImgList;

type
  Tsalaryinputfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btnedit: TSpeedButton;
    btntambah: TSpeedButton;
    SpeedButton2: TSpeedButton;
    gridsalary: TDBGrid;
    ImageList: TImageList;
    cb: TCheckBox;
    procedure gridsalaryDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridsalaryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridsalaryCellClick(Column: TColumn);
    procedure cbClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salaryinputfrm: Tsalaryinputfrm;

implementation

uses dmun,fungsi_merp, salary_prosesun;

{$R *.dfm}

procedure Tsalaryinputfrm.gridsalaryDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;

  imgIndex : integer;
begin
  fixRect := Rect;

  // customizing the 'LastName' field
  if Column.Field = dm.salary.FieldByName('kr_checked') then
  begin
    //adding some logic to grab the required image
    if dm.salary.FieldByName('kr_checked').Value = 1 then
    begin
      imgIndex := 1;
    end else
    begin
      imgIndex :=0;
    end;

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList 
      //(using the "Salary" field's value)
      ImageList.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
     gridsalary.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;

    // reset the output rectangle, 
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;

  //draw default text (fixed position)
  gridsalary.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);

end;
procedure Tsalaryinputfrm.gridsalaryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_space then
  begin
    dm.salary.Edit;
    if dm.salary.FieldByName('kr_Cek').Value = 'X' then
    begin
     dm.salary.FieldByName('kr_Cek').Value := '';
     end else
     begin
      dm.salary.FieldByName('kr_Cek').Value := 'X';
     end;
  end;
end;

procedure Tsalaryinputfrm.gridsalaryCellClick(Column: TColumn);
begin
   dm.salary.Edit;
    if dm.salary.FieldByName('kr_Cek').Value = 'X' then
    begin
     dm.salary.FieldByName('kr_Cek').Value := '';
     end else
     begin
      dm.salary.FieldByName('kr_Cek').Value := 'X';
     end;
end;

procedure Tsalaryinputfrm.cbClick(Sender: TObject);
begin

  with dm.salary do
  begin
  first;
  if  cb.Checked = true then
  begin
      while not eof do
      begin
        edit;
        fieldbyname('kr_cek').Value := 'X';
        next;
      end; // end of while
 end else
 begin

    while not eof do
      begin
        edit;
        fieldbyname('kr_cek').Value := '';
        next;
      end;
 end;
 end;
end;

procedure Tsalaryinputfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.salary);
end;

procedure Tsalaryinputfrm.btntambahClick(Sender: TObject);
begin
 aktifkanform(salaryprosesfrm,TSalaryProsesfrm);
end;

end.
