unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtUserName: TEdit;
    e1: TEdit;
    b1: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses Unit1, Unit2, Unit5, Unit9;

{$R *.dfm}

procedure TLogin.b1Click(Sender: TObject);
var
  nama, password, level, loginLevel, querylogin, userid: string;
  sts: integer;
begin
//cukup jelas
  nama := edtUserName.Text;
  password := e1.Text;

  //assign kueri ke variabel querylogin
  querylogin := 'SELECT * FROM tb_user WHERE username = :nama AND `password` = :password';

  //clear properti SQL dan tambahkan querylogin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add(querylogin);

  //bandingkan variabel 'nama' dan 'password' dengan kolom `nama` dan `password` di database
  ZQuery1.ParamByName('nama').AsString := nama; //assign var 'nama' ke :nama di kueri
  ZQuery1.ParamByName('password').AsString := password; //cukup jelas
  ZQuery1.Open; //jalankan kueri dan cocokan dengan parameter di atas

  if (ZQuery1.RecordCount > 0) then //jika kueri di atas mengembalikan hasil
    begin
      sts := ZQuery1.FieldValues['status']; //ambil value dari kolom `status`
      if (sts = 1) then //memeriksa sts
        begin
          loginLevel := ZQuery1.FieldValues['level']; //ambil value dari kolom `level` sebagai string
          if (loginLevel = 'Karyawan') then //memeriksa loginLevel
            begin
              userid := ZQuery1.FieldValues['user_id']; //set userid berdasarkan sintaks di kanan
              //l1.Caption := userid; //assign userid sebagai value di Label4.Caption
              ShowMessage('Login sebagai Karyawan');
              Pembayaran.ShowModal;
            end
          else if (loginLevel = 'Pegawai') then
            begin
              userid := ZQuery1.FieldValues['user_id'];
              //lblId.Caption := userid;
              ShowMessage('Login sebagai Pegawai');
              tbMenu.ShowModal;
            end;
        end
      else //jika tidak
        begin
          ShowMessage('Login Gagal'); //jalankan ini
        end;
    end;
//  frConnection.ZqLogin.Close;
end;

end.
