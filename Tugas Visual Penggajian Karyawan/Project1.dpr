program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Karyawan},
  Unit2 in 'Unit2.pas' {Gaji},
  Unit3 in 'Unit3.pas' {Absensi},
  Unit4 in 'Unit4.pas' {Pajak},
  Unit5 in 'Unit5.pas' {Pembayaran},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Login},
  Unit8 in 'Unit8.pas' {FrAkun},
  Unit9 in 'Unit9.pas' {tbMenu},
  Unit10 in 'Unit10.pas' {User};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TtbMenu, tbMenu);
  Application.CreateForm(TKaryawan, Karyawan);
  Application.CreateForm(TPembayaran, Pembayaran);
  Application.CreateForm(TPajak, Pajak);
  Application.CreateForm(TAbsensi, Absensi);
  Application.CreateForm(TGaji, Gaji);
  Application.CreateForm(TFrAkun, FrAkun);
  Application.CreateForm(TUser, User);
  Application.Run;
end.
