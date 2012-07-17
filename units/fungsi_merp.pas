unit fungsi_merp;

interface
uses zdataset,dialogs,controls,qforms,forms,classes,Toolwin,windows,dmun,strutils,sysutils;

procedure simpan(namaDataSet:TZquery);
procedure batal(namaDataSet:TZquery);
procedure aktifkanform(namaform : TForm;TnamaForm:TComponentClass);
procedure aktifkanformbiasa(namaform : TForm;TnamaForm:TComponentClass);
procedure aktifkandata(namaDataSet:TZquery);
procedure aktifkandataread(namaDataSet:TZReadOnlyquery);
procedure hapus(namaDataSet:TZQuery);
procedure aktifkanchild(namafrm:Tform);
procedure generateFakturPajak;


var isInventory      : integer;
    isDelivery       : integer;
    isBeliLangsung   : integer;
    isPost           : integer;
    isPenawaran      : integer;
    isTambahKaryawan : integer;
    isbarangfrm      : integer;
    isJualfrm        : integer;
    noinvoice        : string;
    notransaksi      : string;
    isdueclick       : integer;
    bayarpiutang     : double;
    isJual           : integer;
    isViewfromJual   : integer;
    gnpwp            : string;
    gCust            : string;
    gNofaktur        : string;
    gTotal,gPPN      : string;
    isPrintPajak     : integer;

implementation


{procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  {Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;}

procedure generatefakturpajak;
var fpdb : string;
    noseri : integer;
begin
  gNoFaktur :='';
  with dm.fakturpajak do
   begin
      sql.Text := 'select * from fakturpajak order by fp_id desc  limit 1';
      open;
      fpdb   := fieldbyname('fp_kode').Value;
      noseri := strToInt(RightStr(fpdb,8))+1;



      gNofaktur := '010.000-'+formatdatetime('YY',date)+'.'+format('%8.8d',[noseri]) ;
     
   end;
end;

procedure aktifkanchild(namafrm:Tform);
var child : Tform;
begin
   child := namafrm.Create(Application);
 // namafrm.Show;
end;

procedure aktifkanform(namaform : TForm;TnamaForm:TComponentClass);
begin
  if namaform = nil then
  begin
    Application.CreateForm(TnamaForm,namaForm);
    namaform.ShowModal;
  end else
  begin
    namaform.ShowModal;
  end;
end;

procedure aktifkanformbiasa(namaform : TForm;TnamaForm:TComponentClass);
begin
  if namaform = nil then
  begin
    Application.CreateForm(TnamaForm,namaForm);
    namaform.Show;
  end else
  begin
    namaform.Show;
  end;
end;



procedure hapus(namaDataSet:TZQuery);
begin
  if messagedlg('Hapus Data?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    namaDataSet.Delete;
    namaDataSet.ApplyUpdates;
  end;
end;

procedure aktifkandataread(namaDataSet:TZReadOnlyquery);
begin
   if namaDataSet.Active = false then namaDataSet.Active := true;
end;

procedure aktifkandata(namaDataSet:TZQuery);
begin
  if namaDataSet.Active = false then namaDataSet.Active := true;
end;

procedure simpan(namaDataSet:TZquery);
begin
 if messagedlg('Simpan Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    namaDataSet.Post;
    namaDataSet.ApplyUpdates;
    exit;
 end;
end;

procedure batal(namaDataSet:TZquery);
begin
 if messagedlg('Batalkan Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    namaDataSet.CancelUpdates;
 end;
end;


end.
