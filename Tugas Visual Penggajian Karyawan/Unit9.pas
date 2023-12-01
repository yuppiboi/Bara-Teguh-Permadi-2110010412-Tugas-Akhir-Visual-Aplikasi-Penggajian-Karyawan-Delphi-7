unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TtbMenu = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Karyawan1: TMenuItem;
    Gaji1: TMenuItem;
    Pajak1: TMenuItem;
    Pembayaran1: TMenuItem;
    Absensi1: TMenuItem;
    procedure Karyawan1Click(Sender: TObject);
    procedure Gaji1Click(Sender: TObject);
    procedure Pajak1Click(Sender: TObject);
    procedure Pembayaran1Click(Sender: TObject);
    procedure Absensi1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tbMenu: TtbMenu;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit3;

{$R *.dfm}

procedure TtbMenu.Karyawan1Click(Sender: TObject);
begin
 Karyawan.showmodal;
end;

procedure TtbMenu.Gaji1Click(Sender: TObject);
begin
 Gaji.showmodal;
end;

procedure TtbMenu.Pajak1Click(Sender: TObject);
begin
 Pajak.showmodal;
end;

procedure TtbMenu.Pembayaran1Click(Sender: TObject);
begin
 Pembayaran.showmodal;
end;

procedure TtbMenu.Absensi1Click(Sender: TObject);
begin
 Absensi.showmodal;
end;

end.
