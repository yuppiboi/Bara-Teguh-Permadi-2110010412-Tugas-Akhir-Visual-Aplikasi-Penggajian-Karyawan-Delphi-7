object tbMenu: TtbMenu
  Left = 386
  Top = 248
  Width = 565
  Height = 396
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 32
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Karyawan1: TMenuItem
        Caption = 'Karyawan'
        OnClick = Karyawan1Click
      end
      object Gaji1: TMenuItem
        Caption = 'Gaji'
        OnClick = Gaji1Click
      end
      object Pajak1: TMenuItem
        Caption = 'Pajak'
        OnClick = Pajak1Click
      end
      object Pembayaran1: TMenuItem
        Caption = 'Pembayaran'
        OnClick = Pembayaran1Click
      end
      object Absensi1: TMenuItem
        Caption = 'Absensi'
        OnClick = Absensi1Click
      end
    end
  end
end
