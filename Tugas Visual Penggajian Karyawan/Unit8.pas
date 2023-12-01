unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TFrAkun = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edit1: TEdit;
    edit2: TEdit;
    Edit3: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edit4: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAkun: TFrAkun;

implementation

{$R *.dfm}

procedure TFrAkun.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_user values(null, "'+edit1.Text+'", "'+edit2.Text+'", "'+edit3.Text+'", "'+edit4.Text+'", "'+edit5.Text+'")');
  zQuery1.ExecSQL;

  zQuery1.SQL.Clear;
  zQuery1.SQL.Add('select * from tb_user');
  zQuery1.Open;
  Showmessage('Akun Berhasil Dibuat')
end;

end.
