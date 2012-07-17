unit salary_prosesun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,strUtils;

type
  Tsalaryprosesfrm = class(TForm)
    cbperiode: TComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
    procedure prosesGaji;
  public
    { Public declarations }
  end;

var
  salaryprosesfrm: Tsalaryprosesfrm;
  gapok          : double;
  biayajabatan   : double;
  ptkp           : double;
  gajinetto      : double;
  gajibrutto     : double;
  objekpajak     : double;
  potonganpajak  : double;
  gajiObjekpajak : double;
  pengurangGaji  : double;
  penambahGaji   : double;

implementation

uses dmun,fungsi_merp,db;
{$R *.dfm}

procedure Tsalaryprosesfrm.prosesGaji;
var ptid :string;
    salaryid : string;
    noref  : string;
    norefinc : integer;
begin

     aktifkandata(dm.karyawan_detail);
     aktifkandata(dm.salary_level);
     aktifkandata(dm.inputsalary);
     aktifkandata(dm.ptkp);


     with dm.salary do
     begin
       first;
       while not eof do
       begin
       //showmessage(fieldbyname('kr_id').AsString+' '+fieldbyname('kr_Cek').AsString);
       if (fieldbyname('kr_cek').Value = 'X') then
       begin
          showmessage('x category exist');
          //cek data gaji pokok karyawan pada database karyawan detail
          if dm.karyawan_detail.Locate('kd_no_induk',fieldbyname('kr_no_induk').Value,[loCaseInsensitive])=true then
          begin
             
             salaryid     := dm.karyawan_detail.fieldbyname('kd_sl_kode').Value; // ambil kode salary id utk mengetahui basic salary ke data salary_level
              // cari id dari salary id
             if dm.salary_level.locate('sl_kode',salaryid,[loCaseInsensitive])=true then
             begin
               showmessage('Salary id found - Basic Salary diketahui');

              //ambil faktor pengurang dan penambah dalam salary detail
              with dm.salarytambahcount do
              begin
                sql.Text := 'select sum(sd_amount) as tambah from salary_level_detail '+
                'where sd_jenis=(:tm) and sd_kode = (:kd)';
                params.ParamByName('kd').Value := salaryid;
                params.ParamByName('tm').Value := 'tambah';
                open;



                if fieldbyname('tambah').Value > 0 then
                begin

                penambahGaji := fieldbyname('tambah').Value;
                end else
                begin
                  penambahGaji := 0;
                end;

                showmessage('penambah gaji : '+floatToStr(penambahgaji));
                //cari hasil gaji brutto
                 gapok        := dm.salary_level.fieldbyname('sl_amount').Value;
                 gajibrutto   := gapok+penambahGaji;


              end; // end salary level detail

            
               with dm.salarykurangcount do
              begin
                sql.Text := 'select sum(sd_amount) as kurang from salary_level_detail '+
                'where sd_jenis=(:kr) and sd_kode = (:kd)';
                params.ParamByName('kd').Value := salaryid;
                params.ParamByName('kr').Value := 'kurang';
                open;
                if fieldbyname('kurang').Value > 0 then
                begin
                pengurangGaji := fieldbyname('kurang').Value;
                end else
                begin
                  pengurangGaji :=0;
                end;

              end; // end salary level detail


              
             end;



            biayajabatan       := gajiBrutto*5/100;
            gajinetto          := gajiBrutto-pengurangGaji;
            gajiObjekPajak     := gajiBrutto-pengurangGaji-biayajabatan;
            ptid               := dm.karyawan_detail.fieldbyname('kd_pt_id').Value; // ambil klasifikasi faktor pengurang pajak ptkp

          end;

       

         //cari besaran penghasilan tidak kenapa pajak (ptkp) utk karyawan bersangkutan 
          if dm.ptkp.Locate('pt_id',ptid,[loCaseInsensitive])=true then
          begin
            ptkp := dm.ptkp.fieldbyname('pt_nilaipertahun').Value;
          end;

          //lakukan perhitungan pada penghasilan yang terkena pajak
          objekPajak    := (gajiObjekPajak*12)-ptkp;   // penghasilan setahun diambil ketentuan penghasilan tidak kena pajak
          if objekpajak > 0 then
          begin
          potonganpajak :=  (objekPajak*5/100)/12;   //5% dikalikan objek pajak dibagi 12 utk mengetahui potongan pajak per bulan
          end else
          begin
             potonganpajak := 0;
          end;

         //lakukan pemrosesan nomor referensi otomatis
         with dm.salaryref do
         begin
          sql.Text := 'select sa_ref from salary order by sa_id desc limit 1 ';
          open;
          norefinc := StrToInt(RightStr(fieldbyname('sa_ref').Value,8))+1;
         end;
         noref := 'SL'+format('%8.8d',[norefinc]);

         dm.inputsalary.Append;
         dm.inputsalary.FieldByName('sa_kr_id').Value           := fieldbyname('kr_id').Value;
         dm.inputsalary.FieldByName('sa_date').Value            := date;
         dm.inputsalary.FieldByName('sa_period').Value          := cbperiode.Text;
         dm.inputsalary.FieldByName('sa_pengurang_pajak').Value := biayaJabatan;
         dm.inputsalary.FieldByName('sa_pengurangan').Value     := pengurangGaji;
         dm.inputsalary.FieldByName('sa_penambahan').Value      := penambahGaji;
         dm.inputsalary.FieldByName('sa_gross_pay').Value       := gapok;
         dm.inputsalary.FieldByName('sa_ptkp').Value            := ptkp;
         dm.inputsalary.FieldByName('sa_objek_pajak').Value     := objekpajak;
         dm.inputsalary.FieldByName('sa_potongan_pajak').Value  := potonganpajak;
         dm.inputsalary.FieldByName('sa_net_pay').Value         := gajinetto;
         dm.inputsalary.FieldByName('sa_take_home_pay').Value   := gajinetto-potonganpajak;
         dm.inputsalary.FieldByName('sa_kode_level').Value      := salaryid;
         dm.inputsalary.FieldByName('sa_ref').Value             := noref;
         dm.inputsalary.Post;
       
       end; // end of kr cek  
        next; 
       end; // end of while
     end;  // end of with dm.salary

     // inilah saatnya posting ke general ledger di bawah ini:-- yiiiiiihaaa
     aktifkandata(dm.general_ledger);
     with dm.general_ledger do
     begin
        //posting ke akun kas - kas dikurangi untuk gaji karyawan
        append;
        fieldbyname('gl_amount').Value := gajinetto*-1;  // gaji netto sebelum diambil potongan pajak
        fieldbyname('gl_kredit').Value := gajinetto;  // kas berkurang di kredit
        fieldbyname('gl_akun').Value   := '110-20';
        fieldbyname('gl_tgl').Value    := date;
        fieldbyname('gl_ref').Value    := noref;
        fieldbyname('gl_desc').Value   := 'Pembayaran Salary No Ref:'+noref;
        post;

        //posting ke akun "gaji direksi dan karyawan" -- rumpun beban
        append;
        fieldbyname('gl_amount').Value := gajinetto;  // gaji netto sebelum diambil potongan pajak
        fieldbyname('gl_debet').Value :=  gajinetto;  // beban bertambah di debet
        fieldbyname('gl_akun').Value   := '610-10';
        fieldbyname('gl_tgl').Value    := date;
        fieldbyname('gl_ref').Value    := noref;
        fieldbyname('gl_desc').Value   := 'Pembayaran Salary No Ref:'+noref;
        post;


        //posting ke akun "hutang gaji" dari potongan PPh 21 karyawan yang digaji
        append;
        fieldbyname('gl_amount').Value := potonganpajak;  // gaji netto sebelum diambil potongan pajak
        fieldbyname('gl_debet').Value  := potonganpajak;  // beban bertambah di debet
        fieldbyname('gl_akun').Value   := '210-81';
        fieldbyname('gl_tgl').Value    := date;
        fieldbyname('gl_ref').Value    := noref;
        fieldbyname('gl_desc').Value   := 'Potongan PPh 21 No Ref:'+noref;
        post;

        //posting ke akun kas - kas ditambahkan dari hasil potongan pajak terhadap karyawan -- lucuuuu bolak balik
        append;
        fieldbyname('gl_amount').Value := potonganpajak; // gaji netto sebelum diambil potongan pajak
        fieldbyname('gl_debet').Value  := potonganpajak;  // kas bertambah di debet
        fieldbyname('gl_akun').Value   := '110-20';
        fieldbyname('gl_tgl').Value    := date;
        fieldbyname('gl_ref').Value    := noref;
        fieldbyname('gl_desc').Value   := 'Masukan Potongan PPh 21 untuk No Ref:'+noref;
        post;
        
     end; // end of general ledger
end;

procedure Tsalaryprosesfrm.Button1Click(Sender: TObject);
var tgl : TDateTime;
begin
 tgl := incmonth(date,1);
 showmessage(formatDateTime('mmmm yyyy ',tgl));
end;

procedure Tsalaryprosesfrm.FormCreate(Sender: TObject);
var i: integer;
    tgl : TDateTime;
    curdate : TDateTime;
begin
    curDate := incmonth(date,0);
    for i:=-1 to 10 do
    begin
      tgl :=incmonth(date,i);
      cbperiode.Items.Add(formatDateTime('mmmm yyyy',tgl));
    end;

    cbperiode.Text :=  formatDateTime('mmmm yyyy',curdate);
end;

procedure Tsalaryprosesfrm.btntambahClick(Sender: TObject);
begin
 prosesGaji;
end;

end.
