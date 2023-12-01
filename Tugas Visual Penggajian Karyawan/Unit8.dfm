object FrAkun: TFrAkun
  Left = 319
  Top = 274
  Width = 342
  Height = 270
  Caption = 'FormBuatAkun'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 47
    Height = 13
    Caption = 'username'
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 46
    Height = 13
    Caption = 'password'
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 24
    Height = 13
    Caption = 'email'
  end
  object Label4: TLabel
    Left = 24
    Top = 88
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label5: TLabel
    Left = 24
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edit1: TEdit
    Left = 96
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edit2: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edit5: TEdit
    Left = 96
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edit4: TComboBox
    Left = 96
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Karyawan'
      'Pegawai')
  end
  object Button1: TButton
    Left = 96
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Buat Akun'
    TabOrder = 5
    OnClick = Button1Click
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
    Left = 32
    Top = 184
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 80
    Top = 184
  end
end
