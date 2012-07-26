object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 644
  Width = 1158
  object conerp: TZConnection
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'merp'
    User = 'root'
    Password = 'root'
    Protocol = 'mysql-5'
    Left = 8
    Top = 8
  end
  object group: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM roles')
    Params = <>
    Left = 136
    Top = 8
  end
  object useradd: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM user ORDER BY us_id ASC')
    Params = <>
    Left = 72
    Top = 64
    object StringField1: TWideStringField
      DisplayLabel = 'Nama Depan'
      FieldName = 'us_firstname'
      Size = 255
    end
    object StringField2: TWideStringField
      DisplayLabel = 'Nama Belakang'
      FieldName = 'us_lastname'
      Size = 255
    end
    object StringField3: TWideStringField
      DisplayLabel = 'Username'
      FieldName = 'us_username'
      Size = 255
    end
    object StringField4: TWideStringField
      FieldName = 'us_password'
      Size = 255
    end
    object StringField5: TWideStringField
      FieldName = 'us_group'
      Size = 255
    end
    object StringField6: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Group Akses'
      LookupDataSet = group
      LookupKeyFields = 'ga_name'
      LookupResultField = 'ga_name'
      KeyFields = 'us_group'
      Size = 30
      Lookup = True
    end
  end
  object barang: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM barang ORDER BY br_id ASC')
    Params = <>
    Left = 136
    Top = 64
  end
  object kategori: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM kategori ORDER BY kg_nama  ASC')
    Params = <>
    Left = 192
    Top = 8
  end
  object vendor: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM vendor ORDER BY ve_id ASC')
    Params = <>
    Left = 192
    Top = 64
  end
  object supplier: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM supplier ORDER BY sp_id ASC')
    Params = <>
    Left = 72
    Top = 120
  end
  object customer: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 136
    Top = 120
  end
  object beli: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM beli ORDER BY be_id DESC LIMIT 1')
    Params = <>
    Left = 192
    Top = 128
  end
  object supplierpic: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM supplier_pic ORDER BY sp_id ASC')
    Params = <>
    Left = 256
    Top = 8
  end
  object belidetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = belidetailBeforePost
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    MasterFields = 'be_kode'
    MasterSource = ds.beli
    LinkedFields = 'bd_kode'
    Left = 248
    Top = 128
  end
  object custpic: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM custpic order by cp_id desc ')
    Params = <>
    Left = 256
    Top = 72
  end
  object custpicview: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from custpic')
    Params = <>
    MasterFields = 'cu_id'
    MasterSource = ds.customer
    LinkedFields = 'cp_custid'
    Left = 328
    Top = 8
  end
  object polistn: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from beli ORDER BY be_id DESC')
    Params = <>
    Left = 328
    Top = 64
    object polistnbe_id: TIntegerField
      FieldName = 'be_id'
      Required = True
    end
    object polistnbe_kode: TWideStringField
      FieldName = 'be_kode'
      Size = 18
    end
    object polistnbe_tgl: TDateField
      FieldName = 'be_tgl'
    end
    object polistnbe_due: TDateField
      FieldName = 'be_due'
    end
    object polistnSupplier: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Supplier'
      LookupDataSet = supplier
      LookupKeyFields = 'sp_id'
      LookupResultField = 'sp_name'
      KeyFields = 'be_supplier_id'
      Size = 150
      Lookup = True
    end
    object polistnbe_supplier_id: TIntegerField
      FieldName = 'be_supplier_id'
    end
    object polistnbe_pic: TIntegerField
      FieldName = 'be_pic'
    end
    object polistnbe_post: TSmallintField
      FieldName = 'be_post'
    end
  end
  object footnote: TZQuery
    Connection = conerp
    BeforePost = footnoteBeforePost
    SQL.Strings = (
      'select * from foot_note')
    Params = <>
    Left = 328
    Top = 128
  end
  object jual: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jual order by ju_id desc limit 1')
    Params = <>
    Left = 72
    Top = 176
    object jualju_kode: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object jualju_tgl: TDateField
      FieldName = 'ju_tgl'
    end
    object jualju_cust_id: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object jualju_cust_pic: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object jualju_due: TDateField
      FieldName = 'ju_due'
    end
    object jualju_bayar: TWideStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object jualju_po: TWideStringField
      FieldName = 'ju_po'
      Size = 255
    end
    object jualju_project: TIntegerField
      FieldName = 'ju_project'
    end
    object jualju_total: TFloatField
      FieldName = 'ju_total'
    end
    object jualju_tax: TFloatField
      FieldName = 'ju_tax'
    end
    object jualju_akun: TWideStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object jualju_ppn: TWideStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
    object jualju_cust_kode: TWideStringField
      FieldName = 'ju_cust_kode'
      Size = 255
    end
    object jualju_downpayment: TFloatField
      FieldName = 'ju_downpayment'
      DisplayFormat = '#,###'
    end
    object jualju_lunas: TSmallintField
      FieldName = 'ju_lunas'
    end
    object jualju_invoice_sent: TSmallintField
      FieldName = 'ju_invoice_sent'
    end
    object jualju_barang_sent: TSmallintField
      FieldName = 'ju_barang_sent'
    end
    object jualju_downpayment_tax: TFloatField
      FieldName = 'ju_downpayment_tax'
    end
    object jualju_balance: TFloatField
      FieldName = 'ju_balance'
    end
    object jualju_isdp: TSmallintField
      FieldName = 'ju_isdp'
    end
  end
  object jualdetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = jualdetailBeforePost
    OnNewRecord = jualdetailNewRecord
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc limit 1')
    Params = <>
    MasterFields = 'ju_kode'
    MasterSource = ds.jual
    LinkedFields = 'jd_kode'
    Left = 136
    Top = 176
    object jualdetailjd_kode: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object jualdetailjd_tgl: TDateField
      FieldName = 'jd_tgl'
    end
    object jualdetailjd_kd_barang: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object jualdetailjd_nama_barang: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object jualdetailjd_qty: TIntegerField
      FieldName = 'jd_qty'
    end
    object jualdetailjd_harga_pokok: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_harga_jual: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_disc_persen: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object jualdetailjd_total: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_discrp: TFloatField
      FieldName = 'jd_discrp'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_margin: TFloatField
      FieldName = 'jd_margin'
    end
    object jualdetailjd_satuan: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
    object jualdetailjd_type: TWideStringField
      FieldName = 'jd_type'
      Size = 255
    end
  end
  object gudang: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from gudang')
    Params = <>
    Left = 200
    Top = 184
  end
  object inventory: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from vw_stock_barang where in_kd_gudang=:kd_gudang')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kd_gudang'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kd_gudang'
        ParamType = ptUnknown
      end>
  end
  object polist: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from beli ORDER BY be_id DESC')
    Params = <>
    Left = 336
    Top = 184
  end
  object invoice: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jual order by ju_id desc')
    Params = <>
    Left = 70
    Top = 240
    object invoiceju_kode: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object invoiceju_tgl: TDateField
      FieldName = 'ju_tgl'
    end
    object invoiceju_cust_id: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object invoiceju_cust_pic: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object invoiceju_due: TDateField
      FieldName = 'ju_due'
    end
    object invoiceju_bayar: TWideStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object invoiceju_po: TWideStringField
      FieldName = 'ju_po'
      ReadOnly = True
      Size = 255
    end
    object invoiceCustomer: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_nama'
      KeyFields = 'ju_cust_kode'
      Size = 30
      Lookup = True
    end
    object invoicePIC: TWideStringField
      FieldKind = fkLookup
      FieldName = 'PIC'
      LookupDataSet = custpic
      LookupKeyFields = 'cp_id'
      LookupResultField = 'cp_nama'
      KeyFields = 'ju_cust_pic'
      Size = 30
      Lookup = True
    end
    object invoiceju_lunas: TSmallintField
      FieldName = 'ju_lunas'
    end
    object invoiceju_project: TIntegerField
      FieldName = 'ju_project'
    end
    object invoiceju_total: TFloatField
      FieldName = 'ju_total'
      DisplayFormat = '#,###'
    end
    object invoiceju_tax: TFloatField
      FieldName = 'ju_tax'
      DisplayFormat = '#,###'
    end
    object invoiceju_akun: TWideStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object invoiceju_invoice_sent: TSmallintField
      FieldName = 'ju_invoice_sent'
    end
    object invoiceju_ppn: TWideStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
    object invoiceju_barang_sent: TSmallintField
      FieldName = 'ju_barang_sent'
    end
    object invoiceju_cust_kode: TWideStringField
      FieldName = 'ju_cust_kode'
      Size = 255
    end
    object invoicecustnpwp: TWideStringField
      FieldKind = fkLookup
      FieldName = 'custnpwp'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_npwp'
      KeyFields = 'ju_cust_kode'
      Size = 50
      Lookup = True
    end
    object invoiceju_downpayment: TFloatField
      FieldName = 'ju_downpayment'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object invoiceju_balance: TFloatField
      FieldName = 'ju_balance'
      DisplayFormat = '#,###'
    end
    object invoiceju_downpayment_tax: TFloatField
      FieldName = 'ju_downpayment_tax'
      DisplayFormat = '#,###'
    end
    object invoiceju_isdp: TSmallintField
      FieldName = 'ju_isdp'
    end
  end
  object orderdetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 136
    Top = 240
    object StringField7: TWideStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField8: TWideStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField1: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField1: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField2: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField9: TWideStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField10: TWideStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField3: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField4: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object delivery: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from do order by do_id desc ')
    Params = <>
    Left = 200
    Top = 240
  end
  object deliverydetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from dodetail order by dd_id desc limit 1')
    Params = <>
    MasterFields = 'do_kode'
    MasterSource = ds.delivery
    LinkedFields = 'dd_kode'
    Left = 264
    Top = 240
  end
  object barangdeliver: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jualdetail ')
    Params = <>
    Left = 401
    Top = 256
    object barangdeliverjd_id: TIntegerField
      FieldName = 'jd_id'
    end
    object barangdeliverjd_kode: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object barangdeliverjd_tgl: TDateField
      FieldName = 'jd_tgl'
    end
    object barangdeliverjd_kd_barang: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object barangdeliverjd_nama_barang: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object barangdeliverjd_qty: TIntegerField
      FieldName = 'jd_qty'
    end
    object barangdeliverjd_harga_pokok: TFloatField
      FieldName = 'jd_harga_pokok'
    end
    object barangdeliverjd_harga_jual: TFloatField
      FieldName = 'jd_harga_jual'
    end
    object barangdeliverjd_discrp: TFloatField
      FieldName = 'jd_discrp'
    end
    object barangdeliverjd_disc_persen: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object barangdeliverjd_total: TFloatField
      FieldName = 'jd_total'
    end
    object barangdeliverjd_margin: TFloatField
      FieldName = 'jd_margin'
    end
    object barangdeliverjd_satuan: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
    object barangdeliverjd_type: TWideStringField
      FieldName = 'jd_type'
      Size = 255
    end
  end
  object project: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from project')
    Params = <>
    Left = 80
    Top = 312
    object projectpj_id: TIntegerField
      FieldName = 'pj_id'
      Required = True
    end
    object projectpj_name: TWideStringField
      FieldName = 'pj_name'
      Size = 255
    end
    object projectpj_custid: TIntegerField
      FieldName = 'pj_custid'
    end
    object projectpj_location: TWideStringField
      FieldName = 'pj_location'
      Size = 255
    end
  end
  object akun: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from akun order by ak_no asc')
    Params = <>
    Left = 608
    Top = 488
    object akunak_no: TWideStringField
      FieldName = 'ak_no'
      Size = 255
    end
    object akunak_desc: TWideStringField
      FieldName = 'ak_desc'
      Size = 255
    end
    object akunak_subclass: TSmallintField
      FieldName = 'ak_subclass'
    end
    object akunak_class_id: TSmallintField
      FieldName = 'ak_class_id'
    end
    object akunklas: TWideStringField
      FieldKind = fkLookup
      FieldName = 'klas'
      LookupDataSet = akun_klas
      LookupKeyFields = 'kl_kode'
      LookupResultField = 'kl_klasifikasi'
      KeyFields = 'ak_class_id'
      Size = 50
      Lookup = True
    end
    object akunsubklas: TWideStringField
      FieldKind = fkLookup
      FieldName = 'subklas'
      LookupDataSet = akun_subklas
      LookupKeyFields = 'sk_kl'
      LookupResultField = 'sk_desc'
      KeyFields = 'ak_subclass'
      Size = 50
      Lookup = True
    end
  end
  object akun_klas: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun_klas')
    Params = <>
    Left = 152
    Top = 312
  end
  object akun_subklas: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun_subklas')
    Params = <>
    Left = 224
    Top = 312
  end
  object neraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from neraca')
    Params = <>
    Left = 296
    Top = 312
  end
  object deliveryrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from do')
    Params = <>
    Left = 80
    Top = 376
  end
  object barangrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 136
    Top = 376
  end
  object invoicedetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jualdetail order by jd_id asc')
    Params = <>
    Left = 208
    Top = 376
    object StringField11: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object DateField2: TDateField
      FieldName = 'jd_tgl'
    end
    object IntegerField5: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object StringField12: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object IntegerField6: TIntegerField
      FieldName = 'jd_qty'
    end
    object FloatField3: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object FloatField4: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object SmallintField1: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object FloatField5: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object FloatField6: TFloatField
      FieldName = 'jd_discrp'
      DisplayFormat = '#,###'
    end
    object FloatField7: TFloatField
      FieldName = 'jd_margin'
    end
    object StringField13: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
    object invoicedetailjd_type: TWideStringField
      FieldName = 'jd_type'
      Size = 255
    end
  end
  object kasneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'110-20'#39)
    Params = <>
    Left = 616
    Top = 16
    object kasneracagl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object kasneracagl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object kasneracagl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object kasneracagl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object kasneracagl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object kasneracagl_desc: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object kasneracagl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object kasneracagl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object kasneracagl_ref: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object penawaran: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from quotation')
    Params = <>
    Left = 80
    Top = 432
    object penawaranqt_kode: TWideStringField
      FieldName = 'qt_kode'
      Size = 255
    end
    object penawaranqt_date: TDateField
      FieldName = 'qt_date'
    end
    object penawaranqt_up_id: TIntegerField
      FieldName = 'qt_up_id'
    end
    object penawaranqt_pic: TWideStringField
      FieldName = 'qt_pic'
      Size = 255
    end
    object penawaranqt_project_id: TIntegerField
      FieldName = 'qt_project_id'
    end
    object penawaranqt_cust_id: TIntegerField
      FieldName = 'qt_cust_id'
    end
  end
  object inventory_post: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from inventory')
    Params = <>
    Left = 313
    Top = 432
    object IntegerField7: TIntegerField
      FieldName = 'in_id'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'in_kd_barang'
    end
    object SmallintField2: TSmallintField
      FieldName = 'in_kd_gudang'
    end
    object IntegerField9: TIntegerField
      FieldName = 'in_stock'
    end
    object FloatField8: TFloatField
      FieldName = 'in_harga'
      DisplayFormat = '#,###'
    end
    object StringField14: TWideStringField
      FieldKind = fkLookup
      FieldName = 'barang'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_nama'
      KeyFields = 'in_kd_barang'
      Lookup = True
    end
    object StringField15: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_type'
      KeyFields = 'in_kd_barang'
      Size = 30
      Lookup = True
    end
    object StringField16: TWideStringField
      DisplayLabel = 'Gudang'
      FieldKind = fkLookup
      FieldName = 'gudang'
      LookupDataSet = gudang
      LookupKeyFields = 'gd_id'
      LookupResultField = 'gd_nama'
      KeyFields = 'in_kd_gudang'
      Size = 15
      Lookup = True
    end
    object StringField17: TWideStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_unit'
      KeyFields = 'in_kd_barang'
      Size = 15
      Lookup = True
    end
  end
  object penawaran_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = penawaran_detailBeforePost
    SQL.Strings = (
      'select * from quotation_detail')
    Params = <>
    MasterFields = 'qt_kode'
    MasterSource = ds.penawaran
    LinkedFields = 'qd_kode'
    Left = 241
    Top = 432
    object penawaran_detailqd_kode: TWideStringField
      FieldName = 'qd_kode'
      Size = 255
    end
    object penawaran_detailqd_kd_barang: TIntegerField
      FieldName = 'qd_kd_barang'
    end
    object penawaran_detailqd_nama_barang: TWideStringField
      FieldName = 'qd_nama_barang'
      Size = 255
    end
    object penawaran_detailqd_type: TWideStringField
      FieldName = 'qd_type'
      Size = 255
    end
    object penawaran_detailqd_unit: TWideStringField
      FieldName = 'qd_unit'
      Size = 255
    end
    object penawaran_detailqd_qty: TSmallintField
      FieldName = 'qd_qty'
    end
    object penawaran_detailqd_harga: TFloatField
      FieldName = 'qd_harga'
      DisplayFormat = '#,###'
    end
    object penawaran_detailqd_total: TFloatField
      FieldName = 'qd_total'
      DisplayFormat = '#,###'
    end
    object penawaran_detailqd_tgl: TDateField
      FieldName = 'qd_tgl'
    end
  end
  object footnote_global: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from footnote_global')
    Params = <>
    Left = 73
    Top = 496
  end
  object sedianeraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'140-10'#39)
    Params = <>
    Left = 464
    Top = 72
    object sedianeracagl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object sedianeracagl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object sedianeracagl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object sedianeracagl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object sedianeracagl_desc: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object sedianeracagl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_ref: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hutangneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select  gl_akun,sum(gl_amount) as totalhutang from general_ledge' +
        'r where gl_akun like '#39'2%'#39
      'group by gl_akun order by gl_akun asc')
    Params = <>
    Left = 544
    Top = 72
    object hutangneracagl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object hutangneracatotalhutang: TFloatField
      FieldName = 'totalhutang'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object general_ledger: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger')
    Params = <>
    Left = 280
    Top = 376
  end
  object glkas: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'110-20'#39)
    Params = <>
    Left = 616
    Top = 240
  end
  object bd_inventory: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 465
    Top = 416
    object StringField24: TWideStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField25: TWideStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField10: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField15: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField16: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField26: TWideStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField5: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField27: TWideStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField11: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField12: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField13: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object glpiutang: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'130-20'#39)
    Params = <>
    Left = 464
    Top = 296
    object IntegerField14: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField28: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField17: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField6: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField15: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField29: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField18: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField19: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField30: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glpersediaan: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'140-10'#39)
    Params = <>
    Left = 544
    Top = 240
  end
  object glhutangusaha: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-20'#39)
    Params = <>
    Left = 480
    Top = 240
  end
  object glhutangpp: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-80'#39)
    Params = <>
    Left = 544
    Top = 296
    object IntegerField20: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField37: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField26: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField9: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField21: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField38: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField27: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField28: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField39: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object gljualproduk: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'410-10'#39)
    Params = <>
    Left = 616
    Top = 296
    object IntegerField22: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField40: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField29: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField10: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField23: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField41: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField30: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField31: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField42: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glbiaya: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'510-10'#39)
    Params = <>
    Left = 464
    Top = 352
    object IntegerField24: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField43: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField32: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField11: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField25: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField44: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField33: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField34: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField45: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object piutangneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'130-20'#39)
    Params = <>
    Left = 464
    Top = 120
    object IntegerField26: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField18: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField9: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField3: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField27: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField19: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField10: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField11: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField20: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hartatotalneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun like '#39'1%'#39)
    Params = <>
    Left = 544
    Top = 120
    object IntegerField28: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField21: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField12: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField4: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField29: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField22: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField13: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField14: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField23: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hutangpajakjual: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-80'#39)
    Params = <>
    Left = 632
    Top = 128
    object IntegerField30: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField46: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField35: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField12: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField31: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField47: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField36: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField37: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField48: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object chartofaccount: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun')
    Params = <>
    Left = 464
    Top = 16
  end
  object labaneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_debet) as debet, sum(gl_kredit) as kredit' +
        ' from general_ledger where gl_akun like '#39'4%'#39' or gl_akun like '#39'5%' +
        #39' or gl_akun like '#39'6%'#39
      'or gl_akun like '#39'8%'#39' or gl_akun like '#39'9%'#39
      'group by gl_akun ORDER BY gl_akun asc')
    Params = <>
    Left = 544
    Top = 16
    object labaneracagl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object labaneracadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
    object labaneracakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object modalneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as totalmodal from general_ledger' +
        ' where gl_akun like '#39'3%'#39
      'group by gl_akun order by gl_akun asc')
    Params = <>
    Left = 624
    Top = 72
    object modalneracagl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object modalneracatotalmodal: TFloatField
      FieldName = 'totalmodal'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object gl: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM general_ledger'
      'ORDER BY gl_akun,gl_id ASC')
    Params = <>
    Left = 472
    Top = 184
  end
  object pendapatanlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as pndptntotal from general_ledge' +
        'r where gl_akun like '#39'4%'#39
      'group by gl_akun'
      'order by gl_akun asc')
    Params = <>
    Left = 616
    Top = 360
    object pendapatanlrgl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pendapatanlrpndptntotal: TFloatField
      FieldName = 'pndptntotal'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object biayalr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'5%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      ''
      '')
    Params = <>
    Left = 616
    Top = 424
    object biayalrgl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object biayalrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object biayaoprlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'6%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      '')
    Params = <>
    Left = 544
    Top = 424
    object biayaoprlrgl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object biayaoprlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object pendapatanlainlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select  gl_akun, sum(gl_amount) as gl_amount from general_ledger' +
        ' where gl_akun like '#39'8%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      '')
    Params = <>
    Left = 464
    Top = 456
    object pendapatanlainlrgl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pendapatanlainlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object pengeluaranlainlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'9%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      ''
      '')
    Params = <>
    Left = 536
    Top = 352
    object pengeluaranlainlrgl_akun: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pengeluaranlainlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object coalr: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun')
    Params = <>
    Left = 608
    Top = 192
  end
  object jobdes: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jobdes')
    Params = <>
    Left = 929
    Top = 16
    object jobdesjd_id: TIntegerField
      FieldName = 'jd_id'
      Required = True
    end
    object jobdesjd_nama: TWideStringField
      FieldName = 'jd_nama'
      Size = 255
    end
    object jobdesjd_description: TWideStringField
      FieldName = 'jd_description'
      Size = 255
    end
  end
  object karyawan: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 856
    Top = 16
    object karyawankr_id: TIntegerField
      FieldName = 'kr_id'
    end
    object karyawankr_no_induk: TWideStringField
      FieldName = 'kr_no_induk'
      Size = 255
    end
    object karyawankr_firstname: TWideStringField
      FieldName = 'kr_firstname'
      Size = 255
    end
    object karyawankr_lastname: TWideStringField
      FieldName = 'kr_lastname'
      Size = 255
    end
    object karyawankr_jd_id: TIntegerField
      FieldName = 'kr_jd_id'
    end
    object karyawankr_basic: TFloatField
      FieldName = 'kr_basic'
    end
    object karyawankr_dateofbirth: TDateField
      FieldName = 'kr_dateofbirth'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawankr_maritalstatus: TWideStringField
      FieldName = 'kr_maritalstatus'
    end
    object karyawankr_phone: TWideStringField
      FieldName = 'kr_phone'
      Size = 255
    end
    object karyawankr_email: TWideStringField
      FieldName = 'kr_email'
      Size = 255
    end
    object karyawankr_address: TWideStringField
      FieldName = 'kr_address'
      Size = 255
    end
    object karyawankr_city: TWideStringField
      FieldName = 'kr_city'
      Size = 255
    end
    object karyawankr_placeofbirth: TWideStringField
      FieldName = 'kr_placeofbirth'
      Size = 255
    end
    object karyawankr_jk: TWideStringField
      FieldName = 'kr_jk'
      Size = 30
    end
    object karyawankr_workingstart: TDateField
      FieldName = 'kr_workingstart'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object payadjustment: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from pay_adjustment')
    Params = <>
    Left = 864
    Top = 72
    object payadjustmentpa_amount: TFloatField
      FieldName = 'pa_amount'
    end
    object payadjustmentpa_comment: TWideStringField
      FieldName = 'pa_comment'
      Size = 255
    end
    object payadjustmentpa_add_or_deduct: TWideStringField
      FieldName = 'pa_add_or_deduct'
      Size = 255
    end
    object payadjustmentpa_item: TWideStringField
      FieldName = 'pa_item'
      Size = 255
    end
    object payadjustmentpa_percentage: TSmallintField
      FieldName = 'pa_percentage'
    end
  end
  object karyawan_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan_detail')
    Params = <>
    MasterFields = 'kr_no_induk'
    MasterSource = ds.karyawan
    LinkedFields = 'kd_no_induk'
    Left = 848
    Top = 144
    object karyawan_detailkd_kr_id: TIntegerField
      FieldName = 'kd_kr_id'
    end
    object karyawan_detailkd_tgl_mulaikerja: TDateField
      FieldName = 'kd_tgl_mulaikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_tgl_berhentikerja: TDateField
      FieldName = 'kd_tgl_berhentikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_dp_id: TIntegerField
      FieldName = 'kd_dp_id'
    end
    object karyawan_detailkd_jb_id: TIntegerField
      FieldName = 'kd_jb_id'
    end
    object karyawan_detailkd_cash_transfer: TWideStringField
      FieldName = 'kd_cash_transfer'
      Size = 255
    end
    object karyawan_detailkd_ba_id: TIntegerField
      FieldName = 'kd_ba_id'
    end
    object karyawan_detailkd_norek: TWideStringField
      FieldName = 'kd_norek'
      Size = 255
    end
    object karyawan_detailkd_limit_pinjaman: TFloatField
      FieldName = 'kd_limit_pinjaman'
      DisplayFormat = '#,###'
    end
    object karyawan_detailkd_aktif: TSmallintField
      FieldName = 'kd_aktif'
    end
    object karyawan_detailkd_pt_id: TSmallintField
      FieldName = 'kd_pt_id'
    end
    object karyawan_detailkd_npwp: TWideStringField
      FieldName = 'kd_npwp'
      ReadOnly = True
      Size = 255
    end
    object karyawan_detailkd_tgl_npwp: TDateField
      FieldName = 'kd_tgl_npwp'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_sl_id: TIntegerField
      FieldName = 'kd_sl_id'
    end
    object karyawan_detailkd_no_induk: TWideStringField
      FieldName = 'kd_no_induk'
      Size = 255
    end
    object karyawan_detailkd_basic_salary: TFloatField
      FieldName = 'kd_basic_salary'
    end
    object karyawan_detailkd_sl_kode: TWideStringField
      FieldName = 'kd_sl_kode'
      Size = 255
    end
  end
  object ptkp: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from ptkp')
    Params = <>
    Left = 929
    Top = 136
    object ptkppt_id: TIntegerField
      FieldName = 'pt_id'
    end
    object ptkppt_kode: TWideStringField
      FieldName = 'pt_kode'
      Size = 255
    end
    object ptkppt_nama: TWideStringField
      FieldName = 'pt_nama'
      Size = 255
    end
    object ptkppt_nilaipertahun: TFloatField
      FieldName = 'pt_nilaipertahun'
      DisplayFormat = '#,###'
    end
  end
  object dept: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from departement')
    Params = <>
    Left = 840
    Top = 384
  end
  object salary_level: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level')
    Params = <>
    Left = 929
    Top = 312
    object salary_levelsl_name: TWideStringField
      FieldName = 'sl_name'
      Size = 255
    end
    object salary_levelsl_amount: TFloatField
      FieldName = 'sl_amount'
      DisplayFormat = '#,###'
    end
    object salary_levelsl_id: TIntegerField
      FieldName = 'sl_id'
    end
    object salary_levelsl_kode: TWideStringField
      FieldName = 'sl_kode'
      Size = 255
    end
  end
  object bank: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from bank')
    Params = <>
    Left = 832
    Top = 208
  end
  object pph: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from pph')
    Params = <>
    Left = 889
    Top = 376
    object pphph_id: TIntegerField
      FieldName = 'ph_id'
    end
    object pphph_level: TWideStringField
      FieldName = 'ph_level'
      Size = 255
    end
    object pphpp_penghasilan: TFloatField
      FieldName = 'pp_penghasilan'
      DisplayFormat = '#,###'
    end
    object pphpp_tarif: TSmallintField
      FieldName = 'pp_tarif'
    end
  end
  object gl_hapus: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM general_ledger'
      'ORDER BY gl_akun,gl_id ASC')
    Params = <>
    Left = 528
    Top = 184
    object IntegerField32: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField49: TWideStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField38: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField13: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField33: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField50: TWideStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField39: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField40: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField51: TWideStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object jualdetailhapus: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc limit 1')
    Params = <>
    Left = 144
    Top = 440
    object StringField52: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object DateField14: TDateField
      FieldName = 'jd_tgl'
    end
    object IntegerField34: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object StringField53: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object IntegerField35: TIntegerField
      FieldName = 'jd_qty'
    end
    object FloatField41: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object FloatField42: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object SmallintField3: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object FloatField43: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object FloatField44: TFloatField
      FieldName = 'jd_discrp'
    end
    object FloatField45: TFloatField
      FieldName = 'jd_margin'
    end
    object StringField54: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
  end
  object belidetailhapus: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 177
    Top = 496
    object StringField55: TWideStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField56: TWideStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField36: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField46: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField47: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField57: TWideStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField15: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField58: TWideStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField37: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField38: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField39: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object fakturpajak: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from fakturpajak')
    Params = <>
    Left = 736
    Top = 24
  end
  object fakturpajakdetail: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajakdetail')
    Params = <>
    MasterFields = 'fp_kode'
    MasterSource = ds.fakturpajak
    LinkedFields = 'fd_kode'
    Left = 736
    Top = 80
  end
  object fakturpajakrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajak order by fp_id desc')
    Params = <>
    Left = 736
    Top = 136
    object fakturpajakrptfp_id: TIntegerField
      FieldName = 'fp_id'
    end
    object fakturpajakrptfp_kode: TWideStringField
      FieldName = 'fp_kode'
      Size = 255
    end
    object fakturpajakrptfp_cust_id: TIntegerField
      FieldName = 'fp_cust_id'
    end
    object fakturpajakrptfp_ref: TWideStringField
      FieldName = 'fp_ref'
      Size = 255
    end
    object fakturpajakrptfp_date: TDateField
      FieldName = 'fp_date'
    end
    object fakturpajakrptfp_cust_kode: TWideStringField
      FieldName = 'fp_cust_kode'
      Size = 255
    end
    object fakturpajakrptfp_nama_cust: TWideStringField
      FieldName = 'fp_nama_cust'
      Size = 255
    end
    object fakturpajakrptfp_npwp: TWideStringField
      FieldName = 'fp_npwp'
      Size = 255
    end
    object fakturpajakrptfp_dpp: TFloatField
      FieldName = 'fp_dpp'
      DisplayFormat = '#,###'
    end
    object fakturpajakrptfp_ppn: TFloatField
      FieldName = 'fp_ppn'
      DisplayFormat = '#,###'
    end
    object fakturpajakrptfp_ppnbm: TFloatField
      FieldName = 'fp_ppnbm'
      DisplayFormat = '#,###'
    end
    object fakturpajakrptfp_total_transaksi: TFloatField
      FieldName = 'fp_total_transaksi'
    end
    object fakturpajakrptfp_balance: TFloatField
      FieldName = 'fp_balance'
    end
  end
  object fakturpajakdetailrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajakdetail')
    Params = <>
    Left = 736
    Top = 192
    object fakturpajakdetailrptfd_id: TIntegerField
      FieldName = 'fd_id'
      Required = True
    end
    object fakturpajakdetailrptfd_kode: TWideStringField
      FieldName = 'fd_kode'
      Size = 255
    end
    object fakturpajakdetailrptfd_kd_barang: TIntegerField
      FieldName = 'fd_kd_barang'
    end
    object fakturpajakdetailrptfd_nama_barang: TWideStringField
      FieldName = 'fd_nama_barang'
      Size = 255
    end
    object fakturpajakdetailrptfd_qty: TIntegerField
      FieldName = 'fd_qty'
    end
    object fakturpajakdetailrptfd_row_total: TFloatField
      FieldName = 'fd_row_total'
      DisplayFormat = '#,###'
    end
    object fakturpajakdetailrptfd_harga: TFloatField
      FieldName = 'fd_harga'
      DisplayFormat = '#,###'
    end
  end
  object wp: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from customer')
    Params = <>
    Left = 736
    Top = 240
  end
  object barangpajakrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 736
    Top = 304
  end
  object salary: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 929
    Top = 80
    object salarykr_id: TIntegerField
      FieldName = 'kr_id'
      Required = True
    end
    object salarykr_no_induk: TWideStringField
      FieldName = 'kr_no_induk'
      Size = 255
    end
    object salarykr_firstname: TWideStringField
      FieldName = 'kr_firstname'
      Size = 255
    end
    object salarykr_lastname: TWideStringField
      FieldName = 'kr_lastname'
      Size = 255
    end
    object salarykr_jd_id: TIntegerField
      FieldName = 'kr_jd_id'
    end
    object salarykr_basic: TFloatField
      FieldName = 'kr_basic'
    end
    object salarykr_dateofbirth: TDateField
      FieldName = 'kr_dateofbirth'
    end
    object salarykr_maritalstatus: TWideStringField
      FieldName = 'kr_maritalstatus'
    end
    object salarykr_phone: TWideStringField
      FieldName = 'kr_phone'
      Size = 255
    end
    object salarykr_email: TWideStringField
      FieldName = 'kr_email'
      Size = 255
    end
    object salarykr_address: TWideStringField
      FieldName = 'kr_address'
      Size = 255
    end
    object salarykr_city: TWideStringField
      FieldName = 'kr_city'
      Size = 255
    end
    object salarykr_placeofbirth: TWideStringField
      FieldName = 'kr_placeofbirth'
      Size = 255
    end
    object salarykr_jk: TWideStringField
      FieldName = 'kr_jk'
      Size = 30
    end
    object salarykr_workingstart: TDateField
      FieldName = 'kr_workingstart'
    end
    object salarykr_cek: TWideStringField
      FieldName = 'kr_cek'
      Size = 1
    end
  end
  object inputsalary: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from salary')
    Params = <>
    Left = 929
    Top = 192
    object inputsalarysa_id: TIntegerField
      FieldName = 'sa_id'
      Required = True
    end
    object inputsalarysa_kr_id: TIntegerField
      FieldName = 'sa_kr_id'
    end
    object inputsalarysa_gross_pay: TFloatField
      FieldName = 'sa_gross_pay'
    end
    object inputsalarysa_net_pay: TFloatField
      FieldName = 'sa_net_pay'
    end
    object inputsalarysa_date: TDateField
      FieldName = 'sa_date'
    end
    object inputsalarysa_period: TWideStringField
      FieldName = 'sa_period'
      Size = 255
    end
    object inputsalarysa_checked: TSmallintField
      FieldName = 'sa_checked'
    end
    object inputsalarysa_cek: TWideStringField
      FieldName = 'sa_cek'
      Size = 1
    end
    object inputsalarysa_potongan_pajak: TFloatField
      FieldName = 'sa_potongan_pajak'
    end
    object inputsalarysa_ptkp: TFloatField
      FieldName = 'sa_ptkp'
    end
    object inputsalarysa_pengurangan: TFloatField
      FieldName = 'sa_pengurangan'
    end
    object inputsalarysa_objek_pajak: TFloatField
      FieldName = 'sa_objek_pajak'
    end
    object inputsalarysa_no_induk: TWideStringField
      FieldName = 'sa_no_induk'
      Size = 255
    end
    object inputsalarysa_take_home_pay: TFloatField
      FieldName = 'sa_take_home_pay'
    end
    object inputsalarysa_pengurang_pajak: TFloatField
      FieldName = 'sa_pengurang_pajak'
    end
    object inputsalarysa_penambahan: TFloatField
      FieldName = 'sa_penambahan'
    end
    object inputsalarysa_kode_level: TWideStringField
      FieldName = 'sa_kode_level'
      Size = 255
    end
    object inputsalarysa_ref: TWideStringField
      FieldName = 'sa_ref'
      Size = 255
    end
  end
  object salary_level_tambah: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_tambah')
    Params = <>
    Left = 824
    Top = 251
    object salary_level_tambahst_kode: TWideStringField
      FieldName = 'st_kode'
      Size = 255
    end
    object salary_level_tambahst_kode_item: TWideStringField
      FieldName = 'st_kode_item'
      Size = 255
    end
    object salary_level_tambahst_amount: TFloatField
      FieldName = 'st_amount'
    end
    object salary_level_tambahst_jenis: TWideStringField
      FieldName = 'st_jenis'
      Size = 255
    end
    object salary_level_tambahst_nama: TWideStringField
      FieldName = 'st_nama'
      Size = 255
    end
  end
  object salary_level_detail_t: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_detail'
      'where sd_jenis='#39'tambah'#39)
    Params = <>
    MasterFields = 'sl_kode'
    MasterSource = ds.salary_level
    LinkedFields = 'sd_kode'
    Left = 1048
    Top = 184
    object salary_level_detail_tsd_kode: TWideStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object salary_level_detail_tsd_kode_item: TWideStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object salary_level_detail_tsd_nama: TWideStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object salary_level_detail_tsd_amount: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object salary_level_detail_tsd_jenis: TWideStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object salary_level_detail_k: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_detail'
      'where sd_jenis='#39'kurang'#39)
    Params = <>
    MasterFields = 'sl_kode'
    MasterSource = ds.salary_level
    LinkedFields = 'sd_kode'
    Left = 936
    Top = 424
    object StringField59: TWideStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object StringField60: TWideStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object StringField61: TWideStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object FloatField48: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object StringField62: TWideStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object penguranggaji: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from salary_level_kurang')
    Params = <>
    Left = 937
    Top = 256
    object penguranggajisk_id: TIntegerField
      FieldName = 'sk_id'
      Required = True
    end
    object penguranggajisk_kode: TWideStringField
      FieldName = 'sk_kode'
      Size = 255
    end
    object penguranggajisk_amount: TFloatField
      FieldName = 'sk_amount'
    end
    object penguranggajisk_nama: TWideStringField
      FieldName = 'sk_nama'
      Size = 255
    end
  end
  object salary_level_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_detail'
      '')
    Params = <>
    Left = 1025
    Top = 376
    object StringField63: TWideStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object StringField64: TWideStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object StringField65: TWideStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object FloatField49: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object StringField66: TWideStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object salarytambahcount: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      
        'select sum(sd_amount) as tambah from salary_level_detail where s' +
        'd_jenis='#39'tambah'#39' ')
    Params = <>
    Left = 1025
    Top = 304
  end
  object salarykurangcount: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      
        'select sum(sd_amount) as tambah from salary_level_detail where s' +
        'd_jenis='#39'kurang'#39)
    Params = <>
    Left = 1040
    Top = 248
  end
  object karyawanlookup: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select kr_id,kr_no_induk,concat(kr_no_induk,'#39' | '#39',kr_firstname,'#39 +
        ' '#39',kr_lastname) as nama from karyawan')
    Params = <>
    Left = 1009
    Top = 16
  end
  object salaryrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary')
    Params = <>
    Left = 1009
    Top = 80
    object salaryrptsa_id: TIntegerField
      FieldName = 'sa_id'
      Required = True
    end
    object salaryrptsa_kr_id: TIntegerField
      FieldName = 'sa_kr_id'
    end
    object salaryrptsa_gross_pay: TFloatField
      FieldName = 'sa_gross_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_net_pay: TFloatField
      FieldName = 'sa_net_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_date: TDateField
      FieldName = 'sa_date'
    end
    object salaryrptsa_period: TWideStringField
      FieldName = 'sa_period'
      Size = 255
    end
    object salaryrptsa_checked: TSmallintField
      FieldName = 'sa_checked'
    end
    object salaryrptsa_cek: TWideStringField
      FieldName = 'sa_cek'
      Size = 1
    end
    object salaryrptsa_potongan_pajak: TFloatField
      FieldName = 'sa_potongan_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_ptkp: TFloatField
      FieldName = 'sa_ptkp'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_pengurangan: TFloatField
      FieldName = 'sa_pengurangan'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_objek_pajak: TFloatField
      FieldName = 'sa_objek_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_no_induk: TWideStringField
      FieldName = 'sa_no_induk'
      Size = 255
    end
    object salaryrptsa_take_home_pay: TFloatField
      FieldName = 'sa_take_home_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_pengurang_pajak: TFloatField
      FieldName = 'sa_pengurang_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_penambahan: TFloatField
      FieldName = 'sa_penambahan'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_kode_level: TWideStringField
      FieldName = 'sa_kode_level'
      Size = 255
    end
    object salaryrptsa_ref: TWideStringField
      FieldName = 'sa_ref'
      Size = 255
    end
  end
  object karyawandetailrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan_detail')
    Params = <>
    Left = 1017
    Top = 136
    object IntegerField40: TIntegerField
      FieldName = 'kd_kr_id'
    end
    object DateField16: TDateField
      FieldName = 'kd_tgl_mulaikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object DateField17: TDateField
      FieldName = 'kd_tgl_berhentikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField41: TIntegerField
      FieldName = 'kd_dp_id'
    end
    object IntegerField42: TIntegerField
      FieldName = 'kd_jb_id'
    end
    object StringField67: TWideStringField
      FieldName = 'kd_cash_transfer'
      Size = 255
    end
    object IntegerField43: TIntegerField
      FieldName = 'kd_ba_id'
    end
    object StringField68: TWideStringField
      FieldName = 'kd_norek'
      Size = 255
    end
    object FloatField50: TFloatField
      FieldName = 'kd_limit_pinjaman'
      DisplayFormat = '#,###'
    end
    object SmallintField4: TSmallintField
      FieldName = 'kd_aktif'
    end
    object SmallintField5: TSmallintField
      FieldName = 'kd_pt_id'
    end
    object StringField69: TWideStringField
      FieldName = 'kd_npwp'
      ReadOnly = True
      Size = 255
    end
    object DateField18: TDateField
      FieldName = 'kd_tgl_npwp'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField44: TIntegerField
      FieldName = 'kd_sl_id'
    end
    object StringField70: TWideStringField
      FieldName = 'kd_no_induk'
      Size = 255
    end
    object FloatField51: TFloatField
      FieldName = 'kd_basic_salary'
    end
    object StringField71: TWideStringField
      FieldName = 'kd_sl_kode'
      Size = 255
    end
    object karyawandetailrptjabtan: TWideStringField
      FieldKind = fkLookup
      FieldName = 'jabtan'
      LookupDataSet = jobdes
      LookupKeyFields = 'jd_id'
      LookupResultField = 'jd_nama'
      KeyFields = 'kd_jb_id'
      Size = 50
      Lookup = True
    end
    object karyawandetailrptDepartemen: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Departemen'
      LookupDataSet = dept
      LookupKeyFields = 'dp_id'
      LookupResultField = 'dp_nama'
      KeyFields = 'kd_dp_id'
      Size = 30
      Lookup = True
    end
  end
  object salaryref: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select sa_ref from salary order by sa_id desc limit 1')
    Params = <>
    Left = 1040
    Top = 432
  end
  object jurnal_umum_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    AfterPost = jurnal_umum_detailAfterPost
    SQL.Strings = (
      'select * from jurnal_umum_detail')
    Params = <>
    MasterFields = 'ju_kode'
    MasterSource = ds.jurnalumum
    LinkedFields = 'jl_kode'
    Left = 536
    Top = 488
    object jurnal_umum_detailjl_id: TIntegerField
      FieldName = 'jl_id'
    end
    object jurnal_umum_detailjl_kode: TWideStringField
      FieldName = 'jl_kode'
      Size = 255
    end
    object jurnal_umum_detailjl_akun: TWideStringField
      FieldName = 'jl_akun'
      Size = 255
    end
    object jurnal_umum_detailjl_desc: TWideStringField
      FieldName = 'jl_desc'
      Size = 255
    end
    object jurnal_umum_detailjl_amount: TFloatField
      FieldName = 'jl_amount'
    end
    object jurnal_umum_detailjl_kredit: TFloatField
      FieldName = 'jl_kredit'
      DisplayFormat = '#,###'
    end
    object jurnal_umum_detailjl_debet: TFloatField
      FieldName = 'jl_debet'
      DisplayFormat = '#,###'
    end
  end
  object akunview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from akun order by ak_no asc')
    Params = <>
    Left = 664
    Top = 488
    object StringField72: TWideStringField
      FieldName = 'ak_no'
      Size = 255
    end
    object StringField73: TWideStringField
      FieldName = 'ak_desc'
      Size = 255
    end
    object SmallintField6: TSmallintField
      FieldName = 'ak_subclass'
    end
    object SmallintField7: TSmallintField
      FieldName = 'ak_class_id'
    end
    object StringField74: TWideStringField
      FieldKind = fkLookup
      FieldName = 'klas'
      LookupDataSet = akun_klas
      LookupKeyFields = 'kl_kode'
      LookupResultField = 'kl_klasifikasi'
      KeyFields = 'ak_class_id'
      Size = 50
      Lookup = True
    end
    object StringField75: TWideStringField
      FieldKind = fkLookup
      FieldName = 'subklas'
      LookupDataSet = akun_subklas
      LookupKeyFields = 'sk_kl'
      LookupResultField = 'sk_desc'
      KeyFields = 'ak_subclass'
      Size = 50
      Lookup = True
    end
  end
  object jurnalumum: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jurnal_umum')
    Params = <>
    Left = 464
    Top = 528
    object jurnalumumju_id: TIntegerField
      FieldName = 'ju_id'
    end
    object jurnalumumju_kode: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object jurnalumumju_amount: TFloatField
      FieldName = 'ju_amount'
      DisplayFormat = '#,###'
    end
    object jurnalumumju_date: TDateField
      FieldName = 'ju_date'
      EditMask = '!99/99/0000;1;_'
    end
    object jurnalumumju_pic: TWideStringField
      FieldName = 'ju_pic'
      Size = 255
    end
    object jurnalumumju_note: TWideStringField
      FieldName = 'ju_note'
      Size = 255
    end
  end
  object juref: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jurnal_umum')
    Params = <>
    Left = 536
    Top = 544
    object IntegerField45: TIntegerField
      FieldName = 'ju_id'
    end
    object StringField76: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object FloatField52: TFloatField
      FieldName = 'ju_amount'
    end
    object DateField19: TDateField
      FieldName = 'ju_date'
      EditMask = '!99/99/0000;1;_'
    end
    object StringField77: TWideStringField
      FieldName = 'ju_pic'
      Size = 255
    end
    object StringField78: TWideStringField
      FieldName = 'ju_note'
      Size = 255
    end
  end
  object jualref: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jual order by ju_id desc limit 1')
    Params = <>
    Left = 328
    Top = 248
  end
  object inventoryref: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from inventory ')
    Params = <>
    Left = 264
    Top = 496
    object IntegerField49: TIntegerField
      FieldName = 'in_id'
      Required = True
    end
    object IntegerField50: TIntegerField
      FieldName = 'in_kd_barang'
    end
    object SmallintField8: TSmallintField
      FieldName = 'in_kd_gudang'
    end
    object IntegerField51: TIntegerField
      FieldName = 'in_stock'
    end
    object FloatField55: TFloatField
      FieldName = 'in_harga'
      DisplayFormat = '#,###'
    end
    object StringField84: TWideStringField
      FieldKind = fkLookup
      FieldName = 'barang'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_nama'
      KeyFields = 'in_kd_barang'
      Lookup = True
    end
    object StringField85: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_type'
      KeyFields = 'in_kd_barang'
      Size = 30
      Lookup = True
    end
    object StringField86: TWideStringField
      DisplayLabel = 'Gudang'
      FieldKind = fkLookup
      FieldName = 'gudang'
      LookupDataSet = gudang
      LookupKeyFields = 'gd_id'
      LookupResultField = 'gd_nama'
      KeyFields = 'in_kd_gudang'
      Size = 15
      Lookup = True
    end
    object StringField87: TWideStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_unit'
      KeyFields = 'in_kd_barang'
      Size = 15
      Lookup = True
    end
  end
  object deliveryview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from do'
      '')
    Params = <>
    Left = 344
    Top = 368
    object deliveryviewdo_id: TIntegerField
      FieldName = 'do_id'
      Required = True
    end
    object deliveryviewdo_tgl: TDateField
      FieldName = 'do_tgl'
    end
    object deliveryviewdo_pic: TWideStringField
      FieldName = 'do_pic'
      Size = 255
    end
    object deliveryviewdo_ju_trans: TWideStringField
      FieldName = 'do_ju_trans'
      Size = 255
    end
    object deliveryviewdo_kode: TWideStringField
      FieldName = 'do_kode'
      Size = 255
    end
    object deliveryviewdo_cust_id: TIntegerField
      FieldName = 'do_cust_id'
    end
    object deliveryviewdo_cust_pic: TIntegerField
      FieldName = 'do_cust_pic'
    end
    object deliveryviewCustomer: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_nama'
      KeyFields = 'do_cust_kode'
      Size = 100
      Lookup = True
    end
    object deliveryviewdo_cust_kode: TWideStringField
      FieldName = 'do_cust_kode'
      Size = 255
    end
  end
  object customeradd: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 344
    Top = 320
  end
  object jualflag: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jual')
    Params = <>
    Left = 344
    Top = 496
  end
  object invoicegen: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice order by in_id desc limit 1')
    Params = <>
    Left = 72
    Top = 568
  end
  object tagihan: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice')
    Params = <>
    Left = 144
    Top = 568
  end
  object tagihanref: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice')
    Params = <>
    Left = 200
    Top = 568
  end
  object tagihanrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice order by in_id desc')
    Params = <>
    Left = 264
    Top = 568
    object tagihanrptin_kode: TWideStringField
      FieldName = 'in_kode'
      Size = 255
    end
    object tagihanrptin_cust_kode: TWideStringField
      FieldName = 'in_cust_kode'
      Size = 255
    end
    object tagihanrptin_order_kode: TWideStringField
      FieldName = 'in_order_kode'
      Size = 255
    end
    object tagihanrptin_amount: TFloatField
      FieldName = 'in_amount'
      DisplayFormat = '#,###'
    end
    object tagihanrptin_tax: TFloatField
      FieldName = 'in_tax'
      DisplayFormat = '#,###'
    end
    object tagihanrptin_date: TDateField
      FieldName = 'in_date'
    end
    object tagihanrptin_kode_jual: TWideStringField
      FieldName = 'in_kode_jual'
      Size = 255
    end
    object tagihanrptin_delete: TSmallintField
      FieldName = 'in_delete'
    end
    object tagihanrptin_pic_id: TSmallintField
      FieldName = 'in_pic_id'
    end
    object tagihanrptin_paid: TSmallintField
      FieldName = 'in_paid'
    end
    object tagihanrptin_due: TDateField
      FieldName = 'in_due'
      ReadOnly = True
    end
    object tagihanrptin_payment_method: TWideStringField
      FieldName = 'in_payment_method'
      ReadOnly = True
      Size = 255
    end
    object tagihanrptin_po: TWideStringField
      FieldName = 'in_po'
      ReadOnly = True
      Size = 255
    end
    object tagihanrptin_tagihan: TFloatField
      FieldName = 'in_tagihan'
      DisplayFormat = '#,###'
    end
    object tagihanrptin_tagihan_tax: TFloatField
      FieldName = 'in_tagihan_tax'
      DisplayFormat = '#,###'
    end
    object tagihanrptin_tagihan_total: TFloatField
      FieldName = 'in_tagihan_total'
      DisplayFormat = '#,###'
    end
    object tagihanrptin_balance: TFloatField
      FieldName = 'in_balance'
      DisplayFormat = '#,###'
    end
  end
  object tagihanview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from invoice order by in_date asc')
    Params = <>
    Left = 336
    Top = 568
    object tagihanviewin_kode: TWideStringField
      FieldName = 'in_kode'
      Size = 255
    end
    object tagihanviewin_cust_kode: TWideStringField
      FieldName = 'in_cust_kode'
      Size = 255
    end
    object tagihanviewin_order_kode: TWideStringField
      FieldName = 'in_order_kode'
      Size = 255
    end
    object tagihanviewin_amount: TFloatField
      FieldName = 'in_amount'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_tax: TFloatField
      FieldName = 'in_tax'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_date: TDateField
      FieldName = 'in_date'
    end
    object tagihanviewin_kode_jual: TWideStringField
      FieldName = 'in_kode_jual'
      Size = 255
    end
    object tagihanviewin_delete: TSmallintField
      FieldName = 'in_delete'
    end
    object tagihanviewin_pic_id: TSmallintField
      FieldName = 'in_pic_id'
    end
    object tagihanviewin_paid: TSmallintField
      FieldName = 'in_paid'
    end
    object tagihanviewCustomer: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_nama'
      KeyFields = 'in_cust_kode'
      Size = 50
      Lookup = True
    end
    object tagihanviewcustnpwp: TWideStringField
      FieldKind = fkLookup
      FieldName = 'custnpwp'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_npwp'
      KeyFields = 'in_cust_kode'
      Size = 50
      Lookup = True
    end
    object tagihanviewin_tagihan: TFloatField
      FieldName = 'in_tagihan'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_tagihan_tax: TFloatField
      FieldName = 'in_tagihan_tax'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_tagihan_total: TFloatField
      FieldName = 'in_tagihan_total'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_balance: TFloatField
      FieldName = 'in_balance'
      DisplayFormat = '#,###'
    end
    object tagihanviewin_fakturpajak: TSmallintField
      FieldName = 'in_fakturpajak'
    end
  end
  object dorpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from do')
    Params = <>
    Left = 72
    Top = 624
  end
  object jurnaldetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    AfterPost = jurnal_umum_detailAfterPost
    SQL.Strings = (
      'select * from jurnal_umum_detail')
    Params = <>
    Left = 592
    Top = 544
    object IntegerField54: TIntegerField
      FieldName = 'jl_id'
    end
    object StringField91: TWideStringField
      FieldName = 'jl_kode'
      Size = 255
    end
    object StringField92: TWideStringField
      FieldName = 'jl_akun'
      Size = 255
    end
    object StringField93: TWideStringField
      FieldName = 'jl_desc'
      Size = 255
    end
    object FloatField56: TFloatField
      FieldName = 'jl_amount'
    end
    object FloatField57: TFloatField
      FieldName = 'jl_kredit'
      DisplayFormat = '#,###'
    end
    object FloatField58: TFloatField
      FieldName = 'jl_debet'
      DisplayFormat = '#,###'
    end
  end
  object barangdeliverrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM dodetail ORDER BY dd_id ASC')
    Params = <>
    Left = 400
    Top = 584
  end
  object deliverydetailrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from dodetail order by dd_id desc limit 1')
    Params = <>
    Left = 376
    Top = 432
  end
  object supplierdelrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM supplier ORDER BY sp_id ASC')
    Params = <>
    Left = 384
    Top = 512
  end
  object jualrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jual')
    Params = <>
    Left = 752
    Top = 360
    object jualrptju_kode: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object jualrptju_cust_kode: TWideStringField
      FieldName = 'ju_cust_kode'
      Size = 255
    end
    object jualrptju_tgl: TDateField
      FieldName = 'ju_tgl'
    end
    object jualrptju_cust_id: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object jualrptju_cust_pic: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object jualrptju_due: TDateField
      FieldName = 'ju_due'
    end
    object jualrptju_bayar: TWideStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object jualrptju_po: TWideStringField
      FieldName = 'ju_po'
      Size = 255
    end
    object jualrptju_lunas: TSmallintField
      FieldName = 'ju_lunas'
    end
    object jualrptju_project: TIntegerField
      FieldName = 'ju_project'
    end
    object jualrptju_total: TFloatField
      FieldName = 'ju_total'
      DisplayFormat = '#,###'
    end
    object jualrptju_tax: TFloatField
      FieldName = 'ju_tax'
      DisplayFormat = '#,###'
    end
    object jualrptju_akun: TWideStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object jualrptju_ppn: TWideStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
    object jualrptju_invoice_sent: TSmallintField
      FieldName = 'ju_invoice_sent'
    end
    object jualrptju_barang_sent: TSmallintField
      FieldName = 'ju_barang_sent'
    end
  end
  object customerrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 760
    Top = 424
  end
  object jualdetailrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jualdetail')
    Params = <>
    Left = 768
    Top = 552
    object jualdetailrptjd_kode: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object jualdetailrptjd_tgl: TDateField
      FieldName = 'jd_tgl'
    end
    object jualdetailrptjd_kd_barang: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object jualdetailrptjd_nama_barang: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object jualdetailrptjd_qty: TIntegerField
      FieldName = 'jd_qty'
    end
    object jualdetailrptjd_harga_pokok: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object jualdetailrptjd_harga_jual: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object jualdetailrptjd_discrp: TFloatField
      FieldName = 'jd_discrp'
    end
    object jualdetailrptjd_disc_persen: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object jualdetailrptjd_total: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object jualdetailrptjd_margin: TFloatField
      FieldName = 'jd_margin'
      DisplayFormat = '#,###'
    end
    object jualdetailrptjd_satuan: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
  end
  object fakturpajakview: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajak order by fp_id desc')
    Params = <>
    Left = 760
    Top = 480
    object fakturpajakviewfp_kode: TWideStringField
      FieldName = 'fp_kode'
      Size = 255
    end
    object fakturpajakviewfp_cust_id: TIntegerField
      FieldName = 'fp_cust_id'
    end
    object fakturpajakviewfp_ref: TWideStringField
      FieldName = 'fp_ref'
      Size = 255
    end
    object fakturpajakviewfp_date: TDateField
      FieldName = 'fp_date'
    end
    object fakturpajakviewfp_cust_kode: TWideStringField
      FieldName = 'fp_cust_kode'
      Size = 255
    end
    object fakturpajakviewCustomer: TWideStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = customer
      LookupKeyFields = 'cu_kode'
      LookupResultField = 'cu_nama'
      KeyFields = 'fp_cust_kode'
      Size = 100
      Lookup = True
    end
  end
  object jasa: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jasa')
    Params = <>
    Left = 936
    Top = 488
  end
  object wpview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 488
    Top = 592
    object IntegerField53: TIntegerField
      FieldName = 'cu_id'
    end
    object StringField100: TWideStringField
      FieldName = 'cu_kode'
      Size = 255
    end
    object StringField101: TWideStringField
      FieldName = 'cu_nama'
      Size = 255
    end
    object StringField102: TWideStringField
      FieldName = 'cu_alamat'
      Size = 255
    end
    object StringField103: TWideStringField
      FieldName = 'cu_kota'
      Size = 255
    end
    object StringField104: TWideStringField
      FieldName = 'cu_telp'
      Size = 255
    end
    object StringField105: TWideStringField
      FieldName = 'cu_npwp'
      EditMask = '00\.000\.000\.0\-000\.000;1;_'
      Size = 255
    end
    object StringField106: TWideStringField
      FieldName = 'cu_alamatfp'
      Size = 255
    end
  end
  object pajakinsert: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from fakturpajak')
    Params = <>
    Left = 808
    Top = 24
    object pajakinsertfp_id: TIntegerField
      FieldName = 'fp_id'
    end
    object pajakinsertfp_kode: TWideStringField
      FieldName = 'fp_kode'
      EditMask = '000\.000\-00\.00000000;1;_'
      Size = 255
    end
    object pajakinsertfp_cust_id: TIntegerField
      FieldName = 'fp_cust_id'
    end
    object pajakinsertfp_ref: TWideStringField
      FieldName = 'fp_ref'
      Size = 255
    end
    object pajakinsertfp_date: TDateField
      FieldName = 'fp_date'
    end
    object pajakinsertfp_cust_kode: TWideStringField
      FieldName = 'fp_cust_kode'
      Size = 255
    end
    object pajakinsertfp_nama_cust: TWideStringField
      FieldName = 'fp_nama_cust'
      Size = 255
    end
    object pajakinsertfp_npwp: TWideStringField
      FieldName = 'fp_npwp'
      EditMask = '00\.000\.000\.0\-000\.000;1;_'
      Size = 255
    end
    object pajakinsertfp_dpp: TFloatField
      FieldName = 'fp_dpp'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object pajakinsertfp_ppn: TFloatField
      FieldName = 'fp_ppn'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object pajakinsertfp_ppnbm: TFloatField
      FieldName = 'fp_ppnbm'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object pajakinsertfp_total_transaksi: TFloatField
      FieldName = 'fp_total_transaksi'
      DisplayFormat = '#,###'
    end
    object pajakinsertfp_balance: TFloatField
      FieldName = 'fp_balance'
      DisplayFormat = '#,###'
    end
  end
  object fakturpajaklist: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from fakturpajak order by fp_id asc')
    Params = <>
    Left = 856
    Top = 496
    object fakturpajaklistfp_id: TIntegerField
      FieldName = 'fp_id'
    end
    object fakturpajaklistfp_kode: TWideStringField
      FieldName = 'fp_kode'
      Required = True
      Size = 255
    end
    object fakturpajaklistfp_cust_id: TIntegerField
      FieldName = 'fp_cust_id'
    end
    object fakturpajaklistfp_ref: TWideStringField
      FieldName = 'fp_ref'
      Size = 255
    end
    object fakturpajaklistfp_date: TDateField
      FieldName = 'fp_date'
    end
    object fakturpajaklistfp_cust_kode: TWideStringField
      FieldName = 'fp_cust_kode'
      Size = 255
    end
    object fakturpajaklistfp_nama_cust: TWideStringField
      FieldName = 'fp_nama_cust'
      Size = 255
    end
    object fakturpajaklistfp_npwp: TWideStringField
      FieldName = 'fp_npwp'
      Size = 255
    end
    object fakturpajaklistfp_dpp: TFloatField
      FieldName = 'fp_dpp'
      DisplayFormat = '#,###'
    end
    object fakturpajaklistfp_ppn: TFloatField
      FieldName = 'fp_ppn'
      DisplayFormat = '#,###'
    end
    object fakturpajaklistfp_ppnbm: TFloatField
      FieldName = 'fp_ppnbm'
      DisplayFormat = '#,###'
    end
  end
  object fakturpajakcari: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from fakturpajak')
    Params = <>
    Left = 856
    Top = 552
  end
  object customerview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 384
    Top = 16
    object IntegerField57: TIntegerField
      FieldName = 'cu_id'
    end
    object StringField112: TWideStringField
      FieldName = 'cu_kode'
      Size = 255
    end
    object StringField113: TWideStringField
      FieldName = 'cu_nama'
      Size = 255
    end
    object StringField114: TWideStringField
      FieldName = 'cu_alamat'
      Size = 255
    end
    object StringField115: TWideStringField
      FieldName = 'cu_kota'
      Size = 255
    end
    object StringField116: TWideStringField
      FieldName = 'cu_telp'
      Size = 255
    end
    object StringField117: TWideStringField
      FieldName = 'cu_npwp'
      EditMask = '00\.000\.000\.0\-000\.000;1;_'
      Size = 255
    end
    object StringField118: TWideStringField
      FieldName = 'cu_alamatfp'
      Size = 255
    end
  end
  object invoicepajakrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice')
    Params = <>
    Left = 808
    Top = 88
  end
  object invoicehapus: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from invoice')
    Params = <>
    Left = 376
    Top = 80
  end
  object jualcari: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jual order by ju_id desc limit 1')
    Params = <>
    Left = 656
    Top = 560
    object StringField119: TWideStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object DateField23: TDateField
      FieldName = 'ju_tgl'
    end
    object IntegerField58: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object IntegerField59: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object DateField24: TDateField
      FieldName = 'ju_due'
    end
    object StringField120: TWideStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object StringField121: TWideStringField
      FieldName = 'ju_po'
      Size = 255
    end
    object IntegerField60: TIntegerField
      FieldName = 'ju_project'
    end
    object FloatField62: TFloatField
      FieldName = 'ju_total'
    end
    object FloatField63: TFloatField
      FieldName = 'ju_tax'
    end
    object StringField122: TWideStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object StringField123: TWideStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
    object StringField124: TWideStringField
      FieldName = 'ju_cust_kode'
      Size = 255
    end
    object FloatField64: TFloatField
      FieldName = 'ju_downpayment'
      DisplayFormat = '#,###'
    end
    object SmallintField10: TSmallintField
      FieldName = 'ju_lunas'
    end
    object SmallintField11: TSmallintField
      FieldName = 'ju_invoice_sent'
    end
    object SmallintField12: TSmallintField
      FieldName = 'ju_barang_sent'
    end
    object FloatField65: TFloatField
      FieldName = 'ju_downpayment_tax'
    end
    object FloatField66: TFloatField
      FieldName = 'ju_balance'
    end
    object SmallintField13: TSmallintField
      FieldName = 'ju_isdp'
    end
  end
  object jualdetailpajak: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = jualdetailBeforePost
    OnNewRecord = jualdetailNewRecord
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc limit 1')
    Params = <>
    Left = 392
    Top = 184
    object StringField125: TWideStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object DateField25: TDateField
      FieldName = 'jd_tgl'
    end
    object IntegerField61: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object StringField126: TWideStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object IntegerField62: TIntegerField
      FieldName = 'jd_qty'
    end
    object FloatField67: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object FloatField68: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object SmallintField14: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object FloatField69: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object FloatField70: TFloatField
      FieldName = 'jd_discrp'
      DisplayFormat = '#,###'
    end
    object FloatField71: TFloatField
      FieldName = 'jd_margin'
    end
    object StringField127: TWideStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
    object StringField128: TWideStringField
      FieldName = 'jd_type'
      Size = 255
    end
  end
  object imgcommon: TImageList
    Left = 16
    Top = 64
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700BDBDBD00000000000000000000000000000000000000000000000000CEC6
      C600E7E7E700000000000000000000000000000000007F7F0002B2420892A83C
      00E687573DECA8ACACF2BBB4ACF2CCCBC6F2CDCDCFF2B0B0B0F599A2A8FF802E
      01EBA23B03E6A2400FE39632027000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700C6C6
      C6009C94940000000000F7F7F700F7F7F700F7F7F700F7F7F70000000000B5B5
      B500A5A5A500E7E7E700000000000000000000000000C554049FBE6317FFCD79
      27FF9E8770FFB98759FFCE700DFFDCAF7AFFFEFFFFFFFAFAFAFFD9E2EAFFAD70
      24FFDD9435FFECBE75FFA5430AF700000000FFFFFF0000000000656565786F6F
      6FF6585858BB5959596300000001000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700BDBDBD00ADADAD005A5A
      5A009C9C9C0000000000F7F7F700F7F7F700F7F7F700F7F7F70000000000B5B5
      B500525252009C9C9C00B5B5B500EFEFEF0000000000C9680DFFC07028FFC36C
      1EFFA7876BFFAE7C5AFFBA5809FFC69A6CFFD9DFE5FFF8F8F8FFF8FFFFFFA363
      1DFFD5872DFFE5AF69FFA5460AFF00000000FFFFFF0000000000747474C5D4D4
      D4FFB0B0B0FF848484FF666666DE5555559A5A5A5A1000000000000000000000
      000000000000464646293636360CFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6C600ADADAD003939
      39008C8C8C00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E700A5A5
      A500393939008C8C8C00D6D6D600C6C6C60000000000CB690CFFBB6823FFBF66
      19FFB4906EFFB37C60FFAF4900FFB5875EFFBFC6CDFFDEE0E2FFFFFFFFFFA564
      1FFFD4842DFFE4B06CFFA44409FF00000000FFFFFF0064646402787878F2C7C7
      C7FFB1B1B1FFB3B3B3FFB4B4B4FF8B8B8BFF646464F65858589F000000000000
      0000000000004343436A4141417AFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00DEDEDE00CECECE007B7B
      8400848484008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008484
      84007B7B7B00BDBDBD00E7E7E700C6C6C60000000000C9690AFFB8631FFFBC62
      19FFB07F55FFC1BFBDFFB0ACA8FF98918BFF9A8E84FFA3978AFFAEA79FFF9058
      1FFFA76723FFDA9542FFA6450DFF00000000FFFFFF005555556D858585FFC3C3
      C3FFAEAEAEFFB8B8B8FFB7B7B7FFAEAEAEFFB4B4B4FF6C6C6CFD5E5E5E0E0000
      000000000000414141673C3C3CB8FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600E7E7E700EFEFF700D6CE
      C600A58C6300A58C6300A58C6300A58C6300A58C6300A58C6300A58C6300A58C
      6300C6B5A500EFEFF700EFEFEF00C6C6C60000000000C9670AFFB55D1BFFB65D
      17FFB85B0FFFBA5808FFBE5D0AFFC2620EFFC56710FFC86913FFC96E16FFCE78
      24FFD07F2AFFD38932FFA5450EFF00000000FFFFFF005151517EB7B7B7FFB1B1
      B1FFABABABFFBBBBBBFF6B6B6BFF484848BC515151B056565660000000000000
      0000000000003F3F3F703F3F3FE0FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600E7E7E700F7F7F700AD94
      7300AD8C4A00BD9C5A00B59C5A00B59C5A00B59C5A00B59C5A00B59C5A00B594
      52009C845200E7E7E700EFEFEF00C6C6C60000000000C86809FFB05514FFB169
      33FFAF7142FFAE703FFFAF7341FFB17340FFB07642FFB27741FFB47A43FFB47D
      46FFBD8041FFD1842DFFA6460EFF00000000FFFFFF00545454ADCACACAFFAAAA
      AAFFAAAAAAFFA9A9A9FFA2A2A2FF505050A60000000000000000000000000000
      000000000000414141A0505050FCFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600EFEFEF00F7F7F700B59C
      7300D6C68400DECE8C00DECE8C00DECE8C00DECE8C00DECE8C00DECE8C00DECE
      8C00AD946300E7E7E700F7F7F700C6C6C60000000000C76508FFAC4B09FFB59C
      89FFE6F2FBFFE4EDF3FFE6EEF5FFE6EDF4FFE1E9EFFFDDE5ECFFD5DEE4FFD1DC
      E6FFAD9A8AFFD07F26FFA4450EFF00000000FFFFFF00656565DCCBCBCBFF6E6E
      6EF56B6B6BF3C8C8C8FFA6A6A6FF737373FB5252525700000000000000000000
      0000000000004B4B4BCA515151FEFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600EFEFEF00F7F7F700B5A5
      7B00DECE8400E7D69400E7D69400E7D69400E7D69400E7D69400E7D69400E7DE
      9400B59C6B00EFE7E700F7F7F700C6C6C60000000000C86509FFA84303FFB899
      84FFF4F9FCFFD5D4D2FFBEBDBCFFC0BFBEFFC1C0BFFFC2C0BFFFCBCAC9FFDFE3
      E6FFB19B85FFCF7C22FFA4440DFF00000000FFFFFF00717171FBB5B5B5FF4949
      497B45454581BBBBBBFFA6A6A6FF9F9F9FFF545454E25151514D000000000000
      000044444471666666FE484848ECFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00C6C6C60000000000AD94
      7300BD9C5A00BDA56300BD9C6300BD9C6300BD9C6300BD9C6300BD9C6300C6A5
      6300A58C5200EFEFEF00D6D6D600D6D6D60000000000C76508FFA23C00FFBA9B
      85FFFAFFFFFFF1F1F1FFECECECFFEBEBEBFFE8E8E8FFE4E4E4FFE1E1E1FFE2E5
      E9FFB29B88FFCD7920FFA5440DFF00000000FFFFFF005757577E5F5F5FAF4545
      450643434309545454D6D0D0D0FF999999FF969696FF5D5D5DF8444444B34242
      42BD5A5A5AFC858585FF333333B1FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00BDC6C600AD9C
      8C00947B5200A5946B00A58C6B00A58C6B00A58C6B00A58C6B00A58C6B009C84
      5A00A5947B00BDBDBD00D6D6D6000000000000000000C66207FF9E3700FFBC9C
      8AFFFFFFFFFFDDDCDBFFC2C1C0FFC4C3C2FFC4C3C2FFC2C1C0FFCECDCCFFE4E7
      EBFFB39D89FFCD771FFFA4440EFF00000000FFFFFF0000000000000000000000
      0000000000004C4C4C2C5E5E5EF0CDCDCDFF949494FF8E8E8EFF8C8C8CFF8585
      85FF818181FF5C5C5CFE3F3F3F66FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6BDBD00F7FFFF00F7F7F700F7F7F700F7F7F700F7F7F70000000000CECE
      CE00F7F7F70000000000000000000000000000000000C56206FF9A3100FFBF9D
      8AFFFFFFFFFFFBFBFBFFEEEEEEFFEFEFEFFFE9E9E9FFE4E4E4FFE4E4E4FFE6EA
      EDFFB5A089FFC2701DFFA9480DFF00000000FFFFFF0000000000000000000000
      0000000000000000000048484838545454E8B8B8B8FFBBBBBBFFA7A7A7FF8D8D
      8DFF616161FF3838389400000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700C6C6C60000000000F7F7F700F7F7F700F7F7F700F7F7F70000000000D6D6
      D600F7F7F70000000000000000000000000000000000C35F05FA932800FFBE9D
      8DFFFFFFFFFFE5E4E3FFD0CFCEFFD1D0CFFFCFCECDFFCDCCCBFFD4D3D2FFE9ED
      F1FFB9A38CFF8A4F14FFB14F0EFA00000000FFFFFF0000000000000000000000
      0000000000000000000000000000393939163434348F464646DF4A4A4AF13737
      37C63E3E3E780000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700C6C6C600000000000000000000000000000000000000000000000000D6D6
      D600F7F7F70000000000000000000000000000000000D06E0784C25400FBC8A4
      83FFD5D7D7FFD6D3D0FFD6D3D0FFD1CFCCFFCCCAC8FFC7C5C3FFC1BEBBFFBDBD
      BDFFB1947BFFC25800FBB351098400000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FFFFF00000000E7E7800100000000
      C423800141FE0000042080014078000000008001003800000000800100180000
      00008001003800000000800100F8000000008001007800000000800100300000
      20008001000000008001800178000000F02780017C020000E42780017E060000
      E7E7800100000000F00FFFFF00000000}
  end
  object user: TZTable
    Connection = conerp
    TableName = 'user'
    Left = 24
    Top = 144
  end
end
