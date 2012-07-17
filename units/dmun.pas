unit dmun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, ComCtrls, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;
type
  Tdm = class(TDataModule)
    conerp: TZConnection;
    user: TZQuery;
    group: TZQuery;
    userus_firstname: TStringField;
    userus_lastname: TStringField;
    userus_username: TStringField;
    userus_password: TStringField;
    userus_group: TStringField;
    usergroup: TStringField;
    useradd: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    barang: TZQuery;
    kategori: TZQuery;
    vendor: TZQuery;
    supplier: TZQuery;
    customer: TZQuery;
    beli: TZQuery;
    supplierpic: TZQuery;
    belidetail: TZQuery;
    custpic: TZQuery;
    custpicview: TZReadOnlyQuery;
    belidetailbd_kode: TStringField;
    belidetailbd_nama_barang: TStringField;
    belidetailbd_qty: TIntegerField;
    belidetailbd_harga: TFloatField;
    belidetailbd_total: TFloatField;
    belidetailbd_chart_account: TStringField;
    belidetailbd_tgl: TDateField;
    belidetailbd_sendto_nama: TStringField;
    belibe_kode: TStringField;
    belibe_tgl: TDateField;
    belibe_due: TDateField;
    polistn: TZReadOnlyQuery;
    footnote: TZQuery;
    footnotefn_id: TIntegerField;
    footnotefn_supplier_id: TStringField;
    footnotefn_blok1: TStringField;
    footnotefn_blok2: TStringField;
    footnotefn_blok3: TStringField;
    polistnbe_id: TIntegerField;
    polistnbe_kode: TStringField;
    polistnbe_tgl: TDateField;
    polistnbe_due: TDateField;
    polistnSupplier: TStringField;
    suppliersp_name: TStringField;
    suppliersp_address: TStringField;
    suppliersp_kota: TStringField;
    suppliersp_telp: TStringField;
    suppliersp_refer: TStringField;
    belibe_supplier_id: TIntegerField;
    polistnbe_supplier_id: TIntegerField;
    polistnbe_pic: TIntegerField;
    belibe_pic: TIntegerField;
    belidetailbd_kd_barang: TIntegerField;
    belidetailbd_sendto: TIntegerField;
    belidetailbd_up: TIntegerField;
    jual: TZQuery;
    jualdetail: TZQuery;
    gudang: TZQuery;
    inventory: TZQuery;
    inventoryin_id: TIntegerField;
    inventoryin_kd_barang: TIntegerField;
    inventoryin_kd_gudang: TSmallintField;
    inventoryin_stock: TIntegerField;
    inventoryin_harga: TFloatField;
    inventorybarang: TStringField;
    inventoryType: TStringField;
    inventorygudang: TStringField;
    belibe_post: TSmallintField;
    polistnbe_post: TSmallintField;
    polist: TZQuery;
    polistbe_id: TIntegerField;
    polistbe_kode: TStringField;
    polistbe_supplier_id: TIntegerField;
    polistbe_tgl: TDateField;
    polistbe_pic: TIntegerField;
    polistbe_due: TDateField;
    polistbe_post: TSmallintField;
    polistsupplier: TStringField;
    belibe_bayar: TStringField;
    suppliersp_id: TIntegerField;
    jualdetailjd_kode: TStringField;
    jualdetailjd_tgl: TDateField;
    jualdetailjd_kd_barang: TIntegerField;
    jualdetailjd_nama_barang: TStringField;
    jualdetailjd_qty: TIntegerField;
    jualdetailjd_harga_pokok: TFloatField;
    jualdetailjd_harga_jual: TFloatField;
    jualdetailjd_disc_persen: TSmallintField;
    jualdetailjd_total: TFloatField;
    jualdetailjd_discrp: TFloatField;
    jualju_kode: TStringField;
    jualju_tgl: TDateField;
    jualju_cust_id: TIntegerField;
    jualju_cust_pic: TIntegerField;
    jualju_due: TDateField;
    jualju_bayar: TStringField;
    jualju_po: TStringField;
    jualdetailjd_margin: TFloatField;
    invoice: TZQuery;
    invoiceju_kode: TStringField;
    invoiceju_tgl: TDateField;
    invoiceju_cust_id: TIntegerField;
    invoiceju_cust_pic: TIntegerField;
    invoiceju_due: TDateField;
    invoiceju_bayar: TStringField;
    invoiceju_po: TStringField;
    invoiceCustomer: TStringField;
    invoicePIC: TStringField;
    orderdetail: TZQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField9: TStringField;
    DateField1: TDateField;
    StringField10: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    delivery: TZQuery;
    deliverydetail: TZQuery;
    barangdeliver: TZReadOnlyQuery;
    deliverydetaildd_kode: TStringField;
    deliverydetaildd_nama_barang: TStringField;
    deliverydetaildd_type: TStringField;
    deliverydo_tgl: TDateField;
    deliverydo_pic: TStringField;
    deliverydo_kode: TStringField;
    deliverydo_cust_id: TIntegerField;
    deliverydo_cust_pic: TIntegerField;
    jualdetailjd_satuan: TStringField;
    inventoryunit: TStringField;
    deliverydetaildd_satuan: TStringField;
    project: TZQuery;
    projectpj_name: TStringField;
    projectpj_location: TStringField;
    projectpj_id: TIntegerField;
    jualju_project: TIntegerField;
    projectpj_custid: TIntegerField;
    projectcust: TStringField;
    akun: TZQuery;
    akunak_no: TStringField;
    akunak_desc: TStringField;
    akunak_subclass: TSmallintField;
    akunak_class_id: TSmallintField;
    akun_klas: TZQuery;
    akun_subklas: TZQuery;
    akunklas: TStringField;
    akunsubklas: TStringField;
    neraca: TZQuery;
    deliveryrpt: TZQuery;
    barangrpt: TZQuery;
    jualju_total: TFloatField;
    jualju_tax: TFloatField;
    jualju_akun: TStringField;
    invoiceju_lunas: TSmallintField;
    invoiceju_project: TIntegerField;
    invoiceju_total: TFloatField;
    invoiceju_tax: TFloatField;
    invoiceju_akun: TStringField;
    invoicedetail: TZQuery;
    StringField11: TStringField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    StringField12: TStringField;
    IntegerField6: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    SmallintField1: TSmallintField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField13: TStringField;
    kasneraca: TZQuery;
    belibe_islangsung: TSmallintField;
    belibe_project_id: TIntegerField;
    penawaran: TZQuery;
    inventory_post: TZQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    SmallintField2: TSmallintField;
    IntegerField9: TIntegerField;
    FloatField8: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    penawaranqt_kode: TStringField;
    penawaranqt_date: TDateField;
    penawaranqt_up_id: TIntegerField;
    penawaranqt_pic: TStringField;
    penawaranqt_project_id: TIntegerField;
    penawaranqt_cust_id: TIntegerField;
    penawaran_detail: TZQuery;
    penawaran_detailqd_kode: TStringField;
    penawaran_detailqd_kd_barang: TIntegerField;
    penawaran_detailqd_nama_barang: TStringField;
    penawaran_detailqd_type: TStringField;
    penawaran_detailqd_unit: TStringField;
    penawaran_detailqd_qty: TSmallintField;
    penawaran_detailqd_harga: TFloatField;
    penawaran_detailqd_total: TFloatField;
    penawaran_detailqd_tgl: TDateField;
    footnote_global: TZQuery;
    sedianeraca: TZQuery;
    hutangneraca: TZQuery;
    general_ledger: TZQuery;
    glkas: TZQuery;
    bd_inventory: TZQuery;
    StringField24: TStringField;
    StringField25: TStringField;
    IntegerField10: TIntegerField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    StringField26: TStringField;
    DateField5: TDateField;
    StringField27: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    glkasgl_id: TIntegerField;
    glkasgl_akun: TStringField;
    glkasgl_amount: TFloatField;
    glkasgl_tgl: TDateField;
    glkasgl_tran_id: TIntegerField;
    glkasgl_desc: TStringField;
    glkasgl_debet: TFloatField;
    glkasgl_kredit: TFloatField;
    glkasgl_ref: TStringField;
    glpiutang: TZQuery;
    IntegerField14: TIntegerField;
    StringField28: TStringField;
    FloatField17: TFloatField;
    DateField6: TDateField;
    IntegerField15: TIntegerField;
    StringField29: TStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField30: TStringField;
    glpersediaan: TZQuery;
    IntegerField16: TIntegerField;
    StringField31: TStringField;
    FloatField20: TFloatField;
    DateField7: TDateField;
    IntegerField17: TIntegerField;
    StringField32: TStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    StringField33: TStringField;
    glhutangusaha: TZQuery;
    IntegerField18: TIntegerField;
    StringField34: TStringField;
    FloatField23: TFloatField;
    DateField8: TDateField;
    IntegerField19: TIntegerField;
    StringField35: TStringField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    StringField36: TStringField;
    glhutangpp: TZQuery;
    IntegerField20: TIntegerField;
    StringField37: TStringField;
    FloatField26: TFloatField;
    DateField9: TDateField;
    IntegerField21: TIntegerField;
    StringField38: TStringField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    StringField39: TStringField;
    gljualproduk: TZQuery;
    IntegerField22: TIntegerField;
    StringField40: TStringField;
    FloatField29: TFloatField;
    DateField10: TDateField;
    IntegerField23: TIntegerField;
    StringField41: TStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    StringField42: TStringField;
    glbiaya: TZQuery;
    IntegerField24: TIntegerField;
    StringField43: TStringField;
    FloatField32: TFloatField;
    DateField11: TDateField;
    IntegerField25: TIntegerField;
    StringField44: TStringField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    StringField45: TStringField;
    kasneracagl_id: TIntegerField;
    kasneracagl_akun: TStringField;
    kasneracagl_amount: TFloatField;
    kasneracagl_tgl: TDateField;
    kasneracagl_tran_id: TIntegerField;
    kasneracagl_desc: TStringField;
    kasneracagl_debet: TFloatField;
    kasneracagl_kredit: TFloatField;
    kasneracagl_ref: TStringField;
    sedianeracagl_id: TIntegerField;
    sedianeracagl_akun: TStringField;
    sedianeracagl_amount: TFloatField;
    sedianeracagl_tgl: TDateField;
    sedianeracagl_tran_id: TIntegerField;
    sedianeracagl_desc: TStringField;
    sedianeracagl_debet: TFloatField;
    sedianeracagl_kredit: TFloatField;
    sedianeracagl_ref: TStringField;
    piutangneraca: TZQuery;
    IntegerField26: TIntegerField;
    StringField18: TStringField;
    FloatField9: TFloatField;
    DateField3: TDateField;
    IntegerField27: TIntegerField;
    StringField19: TStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField20: TStringField;
    hartatotalneraca: TZQuery;
    IntegerField28: TIntegerField;
    StringField21: TStringField;
    FloatField12: TFloatField;
    DateField4: TDateField;
    IntegerField29: TIntegerField;
    StringField22: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField23: TStringField;
    hutangpajakjual: TZQuery;
    IntegerField30: TIntegerField;
    StringField46: TStringField;
    FloatField35: TFloatField;
    DateField12: TDateField;
    IntegerField31: TIntegerField;
    StringField47: TStringField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    StringField48: TStringField;
    chartofaccount: TZQuery;
    hutangneracagl_akun: TStringField;
    hutangneracatotalhutang: TFloatField;
    labaneraca: TZQuery;
    labaneracagl_akun: TStringField;
    labaneracadebet: TFloatField;
    labaneracakredit: TFloatField;
    modalneraca: TZQuery;
    modalneracagl_akun: TStringField;
    modalneracatotalmodal: TFloatField;
    gl: TZQuery;
    glgl_id: TIntegerField;
    glgl_akun: TStringField;
    glgl_amount: TFloatField;
    glgl_tgl: TDateField;
    glgl_tran_id: TIntegerField;
    glgl_desc: TStringField;
    glgl_debet: TFloatField;
    glgl_kredit: TFloatField;
    glgl_ref: TStringField;
    pendapatanlr: TZQuery;
    biayalr: TZQuery;
    biayaoprlr: TZQuery;
    pendapatanlainlr: TZQuery;
    pengeluaranlainlr: TZQuery;
    coalr: TZQuery;
    pendapatanlrgl_akun: TStringField;
    pendapatanlrpndptntotal: TFloatField;
    biayaoprlrgl_akun: TStringField;
    biayaoprlrgl_amount: TFloatField;
    biayalrgl_akun: TStringField;
    biayalrgl_amount: TFloatField;
    pendapatanlainlrgl_akun: TStringField;
    pendapatanlainlrgl_amount: TFloatField;
    pengeluaranlainlrgl_akun: TStringField;
    pengeluaranlainlrgl_amount: TFloatField;
    jobdes: TZQuery;
    karyawan: TZQuery;
    karyawankr_id: TIntegerField;
    karyawankr_no_induk: TStringField;
    karyawankr_firstname: TStringField;
    karyawankr_lastname: TStringField;
    karyawankr_jd_id: TIntegerField;
    karyawankr_basic: TFloatField;
    karyawankr_dateofbirth: TDateField;
    karyawankr_maritalstatus: TStringField;
    karyawankr_phone: TStringField;
    karyawankr_email: TStringField;
    karyawankr_address: TStringField;
    karyawankr_city: TStringField;
    karyawankr_placeofbirth: TStringField;
    karyawankr_jk: TStringField;
    karyawankr_workingstart: TDateField;
    payadjustment: TZQuery;
    payadjustmentpa_amount: TFloatField;
    payadjustmentpa_comment: TStringField;
    payadjustmentpa_add_or_deduct: TStringField;
    payadjustmentpa_item: TStringField;
    payadjustmentpa_percentage: TSmallintField;
    karyawan_detail: TZQuery;
    ptkp: TZQuery;
    karyawan_detailkd_kr_id: TIntegerField;
    karyawan_detailkd_tgl_mulaikerja: TDateField;
    karyawan_detailkd_tgl_berhentikerja: TDateField;
    karyawan_detailkd_dp_id: TIntegerField;
    karyawan_detailkd_jb_id: TIntegerField;
    karyawan_detailkd_cash_transfer: TStringField;
    karyawan_detailkd_ba_id: TIntegerField;
    karyawan_detailkd_norek: TStringField;
    karyawan_detailkd_limit_pinjaman: TFloatField;
    karyawan_detailkd_aktif: TSmallintField;
    karyawan_detailkd_pt_id: TSmallintField;
    karyawan_detailkd_npwp: TStringField;
    karyawan_detailkd_tgl_npwp: TDateField;
    dept: TZQuery;
    salary_level: TZQuery;
    karyawan_detailkd_sl_id: TIntegerField;
    jobdesjd_id: TIntegerField;
    jobdesjd_nama: TStringField;
    jobdesjd_description: TStringField;
    bank: TZQuery;
    salary_levelsl_name: TStringField;
    salary_levelsl_amount: TFloatField;
    salary_levelsl_id: TIntegerField;
    karyawan_detailkd_no_induk: TStringField;
    ptkppt_id: TIntegerField;
    ptkppt_kode: TStringField;
    ptkppt_nama: TStringField;
    ptkppt_nilaipertahun: TFloatField;
    pph: TZQuery;
    pphph_id: TIntegerField;
    pphph_level: TStringField;
    pphpp_penghasilan: TFloatField;
    pphpp_tarif: TSmallintField;
    salary_levelsl_kode: TStringField;
    gl_hapus: TZQuery;
    IntegerField32: TIntegerField;
    StringField49: TStringField;
    FloatField38: TFloatField;
    DateField13: TDateField;
    IntegerField33: TIntegerField;
    StringField50: TStringField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    StringField51: TStringField;
    jualdetailhapus: TZQuery;
    StringField52: TStringField;
    DateField14: TDateField;
    IntegerField34: TIntegerField;
    StringField53: TStringField;
    IntegerField35: TIntegerField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    SmallintField3: TSmallintField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    StringField54: TStringField;
    belidetailhapus: TZQuery;
    StringField55: TStringField;
    StringField56: TStringField;
    IntegerField36: TIntegerField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    StringField57: TStringField;
    DateField15: TDateField;
    StringField58: TStringField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    fakturpajak: TZQuery;
    fakturpajakdetail: TZQuery;
    fakturpajakrpt: TZQuery;
    fakturpajakdetailrpt: TZQuery;
    wp: TZQuery;
    barangpajakrpt: TZQuery;
    fakturpajakdetailrptfd_id: TIntegerField;
    fakturpajakdetailrptfd_kode: TStringField;   
    fakturpajakdetailrptfd_kd_barang: TIntegerField;
    fakturpajakdetailrptfd_nama_barang: TStringField;
    fakturpajakdetailrptfd_qty: TIntegerField;
    fakturpajakdetailrptfd_row_total: TFloatField;
    fakturpajakdetailrptfd_harga: TFloatField;
    salary: TZQuery;
    salarykr_id: TIntegerField;
    salarykr_no_induk: TStringField;
    salarykr_firstname: TStringField;
    salarykr_lastname: TStringField;
    salarykr_jd_id: TIntegerField;
    salarykr_basic: TFloatField;
    salarykr_dateofbirth: TDateField;
    salarykr_maritalstatus: TStringField;
    salarykr_phone: TStringField;
    salarykr_email: TStringField;
    salarykr_address: TStringField;
    salarykr_city: TStringField;
    salarykr_placeofbirth: TStringField;
    salarykr_jk: TStringField;
    salarykr_workingstart: TDateField;
    salarykr_cek: TStringField;
    inputsalary: TZQuery;
    inputsalarysa_id: TIntegerField;
    inputsalarysa_kr_id: TIntegerField;
    inputsalarysa_gross_pay: TFloatField;
    inputsalarysa_net_pay: TFloatField;
    inputsalarysa_date: TDateField;
    inputsalarysa_period: TStringField;
    inputsalarysa_checked: TSmallintField;
    inputsalarysa_cek: TStringField;
    inputsalarysa_potongan_pajak: TFloatField;
    inputsalarysa_ptkp: TFloatField;
    karyawan_detailkd_basic_salary: TFloatField;
    inputsalarysa_pengurangan: TFloatField;
    inputsalarysa_objek_pajak: TFloatField;
    inputsalarysa_no_induk: TStringField;
    inputsalarysa_take_home_pay: TFloatField;
    salary_level_tambah: TZQuery;
    salary_level_detail_t: TZQuery;
    salary_level_detail_tsd_kode: TStringField;
    salary_level_detail_tsd_kode_item: TStringField;
    salary_level_detail_tsd_nama: TStringField;
    salary_level_detail_tsd_amount: TFloatField;
    salary_level_detail_tsd_jenis: TStringField;
    salary_level_detail_k: TZQuery;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    FloatField48: TFloatField;
    StringField62: TStringField;
    salary_level_tambahst_kode: TStringField;
    salary_level_tambahst_kode_item: TStringField;
    salary_level_tambahst_amount: TFloatField;
    salary_level_tambahst_jenis: TStringField;
    salary_level_tambahst_nama: TStringField;
    penguranggaji: TZQuery;
    penguranggajisk_id: TIntegerField;
    penguranggajisk_kode: TStringField;
    penguranggajisk_amount: TFloatField;
    penguranggajisk_nama: TStringField;
    salary_level_detail: TZQuery;
    StringField63: TStringField;
    StringField64: TStringField;
    StringField65: TStringField;
    FloatField49: TFloatField;
    StringField66: TStringField;
    karyawan_detailkd_sl_kode: TStringField;
    salarytambahcount: TZQuery;
    salarykurangcount: TZQuery;
    karyawanlookup: TZQuery;
    salaryrpt: TZQuery;
    salaryrptsa_id: TIntegerField;
    salaryrptsa_kr_id: TIntegerField;
    salaryrptsa_gross_pay: TFloatField;
    salaryrptsa_net_pay: TFloatField;
    salaryrptsa_date: TDateField;
    salaryrptsa_period: TStringField;
    salaryrptsa_checked: TSmallintField;
    salaryrptsa_cek: TStringField;
    salaryrptsa_potongan_pajak: TFloatField;
    salaryrptsa_ptkp: TFloatField;
    salaryrptsa_pengurangan: TFloatField;
    salaryrptsa_objek_pajak: TFloatField;
    salaryrptsa_no_induk: TStringField;
    salaryrptsa_take_home_pay: TFloatField;
    karyawandetailrpt: TZQuery;
    IntegerField40: TIntegerField;
    DateField16: TDateField;
    DateField17: TDateField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    StringField67: TStringField;
    IntegerField43: TIntegerField;
    StringField68: TStringField;
    FloatField50: TFloatField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    StringField69: TStringField;
    DateField18: TDateField;
    IntegerField44: TIntegerField;
    StringField70: TStringField;
    FloatField51: TFloatField;
    StringField71: TStringField;
    karyawandetailrptjabtan: TStringField;
    karyawandetailrptDepartemen: TStringField;
    inputsalarysa_pengurang_pajak: TFloatField;
    inputsalarysa_penambahan: TFloatField;
    salaryrptsa_pengurang_pajak: TFloatField;
    salaryrptsa_penambahan: TFloatField;
    salaryrptsa_kode_level: TStringField;
    inputsalarysa_kode_level: TStringField;
    inputsalarysa_ref: TStringField;
    salaryrptsa_ref: TStringField;
    salaryref: TZQuery;
    jurnal_umum_detail: TZQuery;
    jurnal_umum_detailjl_id: TIntegerField;
    jurnal_umum_detailjl_kode: TStringField;
    jurnal_umum_detailjl_akun: TStringField;
    jurnal_umum_detailjl_desc: TStringField;
    jurnal_umum_detailjl_amount: TFloatField;
    jurnal_umum_detailjl_kredit: TFloatField;
    jurnal_umum_detailjl_debet: TFloatField;
    akunview: TZQuery;
    StringField72: TStringField;
    StringField73: TStringField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    StringField74: TStringField;
    StringField75: TStringField;
    jurnalumum: TZQuery;
    jurnalumumju_id: TIntegerField;
    jurnalumumju_kode: TStringField;
    jurnalumumju_amount: TFloatField;
    jurnalumumju_date: TDateField;
    jurnalumumju_pic: TStringField;
    jurnalumumju_note: TStringField;
    juref: TZQuery;
    IntegerField45: TIntegerField;
    StringField76: TStringField;
    FloatField52: TFloatField;
    DateField19: TDateField;
    StringField77: TStringField;
    StringField78: TStringField;
    jualju_ppn: TStringField;
    jualref: TZQuery;
    StringField79: TStringField;
    DateField20: TDateField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    DateField21: TDateField;
    StringField80: TStringField;
    StringField81: TStringField;
    IntegerField48: TIntegerField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    StringField82: TStringField;
    StringField83: TStringField;
    inventoryref: TZQuery;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    SmallintField8: TSmallintField;
    IntegerField51: TIntegerField;
    FloatField55: TFloatField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    invoiceju_invoice_sent: TSmallintField;
    invoiceju_ppn: TStringField;
    deliveryview: TZQuery;
    customeradd: TZQuery;
    deliverydo_ju_trans: TStringField;
    jualflag: TZQuery;
    deliverydo_cust_kode: TStringField;
    jualju_cust_kode: TStringField;
    invoiceju_barang_sent: TSmallintField;
    invoicegen: TZQuery;
    tagihan: TZQuery;
    invoiceju_cust_kode: TStringField;
    tagihanref: TZQuery;
    tagihanrpt: TZQuery;
    tagihanview: TZQuery;
    tagihanviewin_kode: TStringField;
    tagihanviewin_cust_kode: TStringField;
    tagihanviewin_order_kode: TStringField;
    tagihanviewin_amount: TFloatField;
    tagihanviewin_tax: TFloatField;
    tagihanviewin_date: TDateField;
    tagihanviewin_kode_jual: TStringField;
    tagihanviewin_delete: TSmallintField;
    tagihanviewin_pic_id: TSmallintField;
    tagihanviewin_paid: TSmallintField;
    tagihanviewCustomer: TStringField;
    dorpt: TZQuery;
    tagihanrptin_kode: TStringField;
    tagihanrptin_cust_kode: TStringField;
    tagihanrptin_order_kode: TStringField;
    tagihanrptin_amount: TFloatField;
    tagihanrptin_tax: TFloatField;
    tagihanrptin_date: TDateField;
    tagihanrptin_kode_jual: TStringField;
    tagihanrptin_delete: TSmallintField;
    tagihanrptin_pic_id: TSmallintField;
    tagihanrptin_paid: TSmallintField;
    tagihanrptin_due: TDateField;
    tagihanrptin_payment_method: TStringField;
    tagihanrptin_po: TStringField;
    jurnaldetail: TZQuery;
    IntegerField54: TIntegerField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    deliveryviewdo_tgl: TDateField;
    deliveryviewdo_pic: TStringField;
    deliveryviewdo_ju_trans: TStringField;
    deliveryviewdo_kode: TStringField;
    deliveryviewdo_cust_id: TIntegerField;
    deliveryviewdo_cust_pic: TIntegerField;
    deliveryviewdo_cust_kode: TStringField;
    deliveryviewCustomer: TStringField;
    barangdeliverrpt: TZQuery;
    deliverydetailrpt: TZQuery;
    StringField88: TStringField;
    StringField90: TStringField;
    StringField94: TStringField;
    SmallintField9: TSmallintField;
    StringField95: TStringField;
    deliverydetailrptdd_kode_barang: TIntegerField;
    barangrptbr_kode: TStringField;
    barangrptbr_barcode: TStringField;
    barangrptbr_nama: TStringField;
    barangrptbr_kategori: TStringField;
    barangrptbr_type: TStringField;
    barangrptbr_vendor: TStringField;
    barangrptbr_unit: TStringField;
    barangrptbr_id: TIntegerField;
    barangrptVendor: TStringField;
    supplierdelrpt: TZQuery;
    IntegerField52: TIntegerField;
    StringField89: TStringField;
    StringField96: TStringField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    deliverydetaildd_kode_barang: TIntegerField;
    jualrpt: TZQuery;
    customerrpt: TZQuery;
    jualrptju_kode: TStringField;
    jualrptju_cust_kode: TStringField;
    jualrptju_tgl: TDateField;
    jualrptju_cust_id: TIntegerField;
    jualrptju_cust_pic: TIntegerField;
    jualrptju_due: TDateField;
    jualrptju_bayar: TStringField;
    jualrptju_po: TStringField;
    jualrptju_lunas: TSmallintField;
    jualrptju_project: TIntegerField;
    jualrptju_total: TFloatField;
    jualrptju_tax: TFloatField;
    jualrptju_akun: TStringField;
    jualrptju_ppn: TStringField;
    jualrptju_invoice_sent: TSmallintField;
    jualrptju_barang_sent: TSmallintField;
    jualdetailrpt: TZQuery;
    jualdetailrptjd_kode: TStringField;
    jualdetailrptjd_tgl: TDateField;
    jualdetailrptjd_kd_barang: TIntegerField;
    jualdetailrptjd_nama_barang: TStringField;
    jualdetailrptjd_qty: TIntegerField;
    jualdetailrptjd_harga_pokok: TFloatField;
    jualdetailrptjd_harga_jual: TFloatField;
    jualdetailrptjd_discrp: TFloatField;
    jualdetailrptjd_disc_persen: TSmallintField;
    jualdetailrptjd_total: TFloatField;
    jualdetailrptjd_margin: TFloatField;
    jualdetailrptjd_satuan: TStringField;
    fakturpajakview: TZQuery;
    fakturpajakviewfp_kode: TStringField;
    fakturpajakviewfp_cust_id: TIntegerField;
    fakturpajakviewfp_ref: TStringField;
    fakturpajakviewfp_date: TDateField;
    fakturpajakviewfp_cust_kode: TStringField;
    fakturpajakviewCustomer: TStringField;
    jasa: TZQuery;
    jasajs_nama: TStringField;
    jasajs_unit: TStringField;
    jasajs_tarif: TFloatField;
    jasajs_id: TIntegerField;
    customercu_id: TIntegerField;
    customercu_kode: TStringField;
    customercu_nama: TStringField;
    customercu_alamat: TStringField;
    customercu_kota: TStringField;
    customercu_telp: TStringField;
    customercu_npwp: TStringField;
    customercu_alamatfp: TStringField;
    invoicecustnpwp: TStringField;
    wpview: TZQuery;
    IntegerField53: TIntegerField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    StringField103: TStringField;
    StringField104: TStringField;
    StringField105: TStringField;
    StringField106: TStringField;
    pajakinsert: TZQuery;
    pajakinsertfp_id: TIntegerField;
    pajakinsertfp_kode: TStringField;
    pajakinsertfp_cust_id: TIntegerField;
    pajakinsertfp_ref: TStringField;
    pajakinsertfp_date: TDateField;
    pajakinsertfp_cust_kode: TStringField;
    pajakinsertfp_nama_cust: TStringField;
    pajakinsertfp_npwp: TStringField;
    pajakinsertfp_dpp: TFloatField;
    pajakinsertfp_ppn: TFloatField;
    pajakinsertfp_ppnbm: TFloatField;
    fakturpajaklist: TZQuery;
    fakturpajaklistfp_id: TIntegerField;
    fakturpajaklistfp_kode: TStringField;
    fakturpajaklistfp_cust_id: TIntegerField;
    fakturpajaklistfp_ref: TStringField;
    fakturpajaklistfp_date: TDateField;
    fakturpajaklistfp_cust_kode: TStringField;
    fakturpajaklistfp_nama_cust: TStringField;
    fakturpajaklistfp_npwp: TStringField;
    fakturpajaklistfp_dpp: TFloatField;
    fakturpajaklistfp_ppn: TFloatField;
    fakturpajaklistfp_ppnbm: TFloatField;
    fakturpajakcari: TZQuery;
    IntegerField55: TIntegerField;
    StringField107: TStringField;
    IntegerField56: TIntegerField;
    StringField108: TStringField;
    DateField22: TDateField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    tagihanviewcustnpwp: TStringField;
    jualju_downpayment: TFloatField;
    barangdeliverjd_id: TIntegerField;
    barangdeliverjd_kode: TStringField;
    barangdeliverjd_tgl: TDateField;
    barangdeliverjd_kd_barang: TIntegerField;
    barangdeliverjd_nama_barang: TStringField;
    barangdeliverjd_qty: TIntegerField;
    barangdeliverjd_harga_pokok: TFloatField;
    barangdeliverjd_harga_jual: TFloatField;
    barangdeliverjd_discrp: TFloatField;
    barangdeliverjd_disc_persen: TSmallintField;
    barangdeliverjd_total: TFloatField;
    barangdeliverjd_margin: TFloatField;
    barangdeliverjd_satuan: TStringField;
    jualdetailjd_type: TStringField;
    barangdeliverjd_type: TStringField;
    deliverydetaildd_qty: TIntegerField;
    invoicedetailjd_type: TStringField;
    customerview: TZQuery;
    IntegerField57: TIntegerField;
    StringField112: TStringField;
    StringField113: TStringField;
    StringField114: TStringField;
    StringField115: TStringField;
    StringField116: TStringField;
    StringField117: TStringField;
    StringField118: TStringField;
    jualju_lunas: TSmallintField;
    jualju_invoice_sent: TSmallintField;
    jualju_barang_sent: TSmallintField;
    jualju_downpayment_tax: TFloatField;
    jualju_balance: TFloatField;
    invoiceju_downpayment: TFloatField;
    invoiceju_balance: TFloatField;
    fakturpajakfp_id: TIntegerField;
    fakturpajakfp_kode: TStringField;
    fakturpajakfp_cust_id: TIntegerField;
    fakturpajakfp_ref: TStringField;
    fakturpajakfp_date: TDateField;
    fakturpajakfp_cust_kode: TStringField;
    fakturpajakfp_nama_cust: TStringField;
    fakturpajakfp_npwp: TStringField;
    fakturpajakfp_dpp: TFloatField;
    fakturpajakfp_ppn: TFloatField;
    fakturpajakfp_ppnbm: TFloatField;
    invoicepajakrpt: TZQuery;
    tagihanviewin_tagihan: TFloatField;
    tagihanviewin_tagihan_tax: TFloatField;
    tagihanviewin_tagihan_total: TFloatField;
    tagihanviewin_balance: TFloatField;
    fakturpajakfp_total_transaksi: TFloatField;
    fakturpajakfp_balance: TFloatField;
    pajakinsertfp_total_transaksi: TFloatField;
    pajakinsertfp_balance: TFloatField;
    tagihanrptin_tagihan: TFloatField;
    tagihanrptin_tagihan_tax: TFloatField;
    tagihanrptin_tagihan_total: TFloatField;
    tagihanrptin_balance: TFloatField;
    jualju_isdp: TSmallintField;
    invoiceju_downpayment_tax: TFloatField;
    invoiceju_isdp: TSmallintField;
    invoicehapus: TZQuery;
    tagihanviewin_fakturpajak: TSmallintField;
    fakturpajakrptfp_id: TIntegerField;
    fakturpajakrptfp_kode: TStringField;
    fakturpajakrptfp_cust_id: TIntegerField;
    fakturpajakrptfp_ref: TStringField;
    fakturpajakrptfp_date: TDateField;
    fakturpajakrptfp_cust_kode: TStringField;
    fakturpajakrptfp_nama_cust: TStringField;
    fakturpajakrptfp_npwp: TStringField;
    fakturpajakrptfp_dpp: TFloatField;
    fakturpajakrptfp_ppn: TFloatField;
    fakturpajakrptfp_ppnbm: TFloatField;
    fakturpajakrptfp_total_transaksi: TFloatField;
    fakturpajakrptfp_balance: TFloatField;
    jualcari: TZQuery;
    StringField119: TStringField;
    DateField23: TDateField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    DateField24: TDateField;
    StringField120: TStringField;
    StringField121: TStringField;
    IntegerField60: TIntegerField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    StringField122: TStringField;
    StringField123: TStringField;
    StringField124: TStringField;
    FloatField64: TFloatField;
    SmallintField10: TSmallintField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    SmallintField13: TSmallintField;
    jualdetailpajak: TZQuery;
    StringField125: TStringField;
    DateField25: TDateField;
    IntegerField61: TIntegerField;
    StringField126: TStringField;
    IntegerField62: TIntegerField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    SmallintField14: TSmallintField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    StringField127: TStringField;
    StringField128: TStringField;
    procedure belidetailBeforePost(DataSet: TDataSet);
    procedure footnoteBeforePost(DataSet: TDataSet);
    procedure jualdetailNewRecord(DataSet: TDataSet);
    procedure jualdetailBeforePost(DataSet: TDataSet);
    procedure penawaran_detailBeforePost(DataSet: TDataSet);
    procedure jobdesBeforeOpen(DataSet: TDataSet);
    procedure jobdesAfterOpen(DataSet: TDataSet);
    procedure jurnal_umum_detailAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses belisupun, progressun,strutils;

{$R *.dfm}

procedure Tdm.belidetailBeforePost(DataSet: TDataSet);
begin
  
  belidetail.FieldByName('bd_tgl').Value   := date();
  belidetail.FieldByName('bd_total').Value := belidetail.fieldbyname('bd_harga').Value*belidetail.fieldbyname('bd_qty').Value;
end;

procedure Tdm.footnoteBeforePost(DataSet: TDataSet);
begin
  footnote.FieldByName('fn_supplier_id').Value := supplier.fieldbyname('sp_id').AsString;
end;

procedure Tdm.jualdetailNewRecord(DataSet: TDataSet);
begin
  jualdetail.FieldByName('jd_disc_persen').Value :=0;
  jualdetail.FieldByName('jd_discrp').Value      :=0;
  jualdetail.FieldByName('jd_qty').Value               :=0;
end;

procedure Tdm.jualdetailBeforePost(DataSet: TDataSet);
var jd : TZquery;
begin

//  if jd.FieldByName('jd_disc')

  jd := jualdetail;
  jd.FieldByName('jd_tgl').Value   := date;
  jd.FieldByName('jd_margin').Value := (jd.fieldbyname('jd_harga_jual').Value-jd.fieldbyname('jd_discrp').Value-jd.fieldbyname('jd_harga_pokok').Value)*(jd.fieldbyname('jd_qty').Value);
  jd.FieldByName('jd_total').Value := (jd.fieldbyname('jd_harga_jual').Value-
                                      ((jd.fieldbyname('jd_harga_jual').Value)*(jd.fieldbyname('jd_disc_persen').Value/100))-
                                      jd.fieldbyname('jd_discrp').Value)
                                      *jd.fieldbyname('jd_qty').Value;

end;

procedure Tdm.penawaran_detailBeforePost(DataSet: TDataSet);
begin
  penawaran_detail.FieldByName('qd_total').Value := penawaran_detail.FieldByName('qd_harga').Value*penawaran_detail.FieldByName('qd_qty').Value;
end;

procedure Tdm.jobdesBeforeOpen(DataSet: TDataSet);
begin
  progressfrm.Show;
end;

procedure Tdm.jobdesAfterOpen(DataSet: TDataSet);
begin
 progressfrm.Close;
// progressfrm.Destroy;
end;

procedure Tdm.jurnal_umum_detailAfterPost(DataSet: TDataSet);
begin


  with jurnal_umum_Detail do
 begin
   if (fieldbyname('jl_debet').AsFloat > 0) and  (fieldbyname('jl_kredit').AsFloat > 0)then
   begin
       messagedlg('Posting Error! Tidak boleh di dua sisi debet dan kredit',mtError,[mbOk],0);
       abort;
   end;

   // mendeteksi posting untuk klasifikasi harta
   if (LeftStr(fieldbyname('jl_akun').Value,1))='1' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value*-1;
     end;

   end; // enf if leftstr




    // mendeteksi posting untuk klasifikasi hutang
   if (LeftStr(fieldbyname('jl_akun').Value,1))='2' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value*-1;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value;
     end;

   end; // enf if leftstr



    // mendeteksi posting untuk klasifikasi modal
   if (LeftStr(fieldbyname('jl_akun').Value,1))='3' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value*-1;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value;
     end;

   end; // enf if leftstr


     // mendeteksi posting untuk klasifikasi pendapatan
   if (LeftStr(fieldbyname('jl_akun').Value,1))='4' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value*-1;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value;
     end;

   end; // enf if leftstr

     // mendeteksi posting untuk klasifikasi modal
   if (LeftStr(fieldbyname('jl_akun').Value,1))='5' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value*-1;
     end;

   end; // enf if leftstr

    if (LeftStr(fieldbyname('jl_akun').Value,1))='6' then
   begin
     if fieldbyname('jl_debet').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_debet').Value;
     end;

     if fieldbyname('jl_kredit').AsFloat > 0 then
     begin
        edit;
        fieldbyname('jl_amount').Value := fieldbyname('jl_kredit').Value*-1;
     end;

   end; // enf if leftstr


 end;  // end of with jurnalumum detail



end;

end.
