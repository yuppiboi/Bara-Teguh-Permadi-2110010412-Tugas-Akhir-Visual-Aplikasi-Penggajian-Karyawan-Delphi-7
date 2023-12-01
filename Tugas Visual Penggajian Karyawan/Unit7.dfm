object Login: TLogin
  Left = 791
  Top = 312
  Width = 382
  Height = 281
  Caption = 'Form Login'
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
    Left = 32
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edtUserName: TEdit
    Left = 120
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e1: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 120
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = b1Click
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
    Top = 168
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 96
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 144
    Top = 168
  end
end
