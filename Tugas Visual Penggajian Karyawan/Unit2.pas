unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxDBSet;

type
  TGaji = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edit1: TEdit;
    edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edit3: TComboBox;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Gaji: TGaji;

implementation

{$R *.dfm}

procedure TGaji.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_gaji values(null,"'+edit1.Text+'", "'+edit2.Text+'", "'+edit3.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_gaji');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TGaji.Button2Click(Sender: TObject);
begin
 ZQuery1.Edit;
  ZQuery1.FieldByName('gaji_pokok').Text := edit1.Text;
  ZQuery1.FieldByName('tunjangan').Text := edit2.Text;
  ZQuery1.FieldByName('jabatan').Text := edit3.Text;
  ZQuery1.Post;

end;

procedure TGaji.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
ZQuery1.Delete;
end;

procedure TGaji.Button4Click(Sender: TObject);
begin
 frxReport1.ShowReport();
end;

end.
