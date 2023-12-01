object Absensi: TAbsensi
  Left = 281
  Top = 219
  Width = 617
  Height = 348
  Caption = 'tb_absensi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 32
    Top = 0
    Width = 545
    Height = 281
    Caption = 'Absensi'
    TabOrder = 8
    object Label5: TLabel
      Left = 24
      Top = 32
      Width = 51
      Height = 13
      Caption = 'ID Absensi'
    end
    object Label6: TLabel
      Left = 24
      Top = 56
      Width = 78
      Height = 13
      Caption = 'Tanggal Absensi'
    end
    object Label7: TLabel
      Left = 24
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Jenis Abseni'
    end
  end
  object Button1: TButton
    Left = 56
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 144
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 3
    OnClick = Button4Click
  end
  object edit3: TComboBox
    Left = 144
    Top = 80
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'izin'
      'sakit')
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 32
    Width = 201
    Height = 177
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edit2: TDateTimePicker
    Left = 144
    Top = 56
    Width = 186
    Height = 21
    Date = 45260.516240856480000000
    Time = 45260.516240856480000000
    TabOrder = 6
  end
  object edit1: TEdit
    Left = 144
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = 'db_penggajian'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\Kuliah\2110010412_visual\Tugas Visual Penggajian Karyawan\lib' +
      'mysql.dll'
    Left = 48
    Top = 288
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_absensi')
    Params = <>
    Left = 88
    Top = 288
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.715385544000000000
    ReportOptions.LastChange = 45258.715385544000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 275.905690000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN ABSENSI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 98.267780000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object frxDBDataset1id_absensi: TfrxMemoView
          Left = 52.913420000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_absensi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_absensi"]')
          ParentFont = False
        end
        object frxDBDataset1tgl_absensi: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_absensi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_absensi"]')
          ParentFont = False
        end
        object frxDBDataset1jenis_absen: TfrxMemoView
          Left = 540.472790000000000000
          Top = 45.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_absen'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_absen"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Absensi')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Absensi')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Absen')
          ParentFont = False
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 136
    Top = 288
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 240
    Top = 288
  end
end
