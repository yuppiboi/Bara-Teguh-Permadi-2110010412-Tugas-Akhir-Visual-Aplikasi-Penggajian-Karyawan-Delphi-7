unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls,
  frxClass, frxDBSet;

type
  TKaryawan = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edit1: TEdit;
    edit2: TEdit;
    edit4: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ZConnection1: TZConnection;
    Button4: TButton;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    edit3: TComboBox;
    edit5: TComboBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Karyawan: TKaryawan;

implementation

{$R *.dfm}

procedure TKaryawan.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into tb_karyawan values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+FormatDateTime('yyyy-mm-dd',edit4.Date)+'","'+edit5.Text+'")');
ZQuery1.ExecSQL ;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tb_karyawan');
ZQuery1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TKaryawan.Button2Click(Sender: TObject);
begin
 ZQuery1.Edit;
  ZQuery1.FieldByName('nama').Text := edit1.Text;
  ZQuery1.FieldByName('alamat').Text := edit2.Text;
  ZQuery1.FieldByName('jenis_kelamin').Text := edit3.Text;
  ZQuery1.FieldByName('tgl_lahir').AsDateTime := edit4.Date;
  ZQuery1.FieldByName('jabatan').Text := edit5.Text;
  ZQuery1.Post;
end;

procedure TKaryawan.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=ZQuery1.Fields[1].AsString;
  edit2.Text:=ZQuery1.Fields[2].AsString;
  edit3.Text:=ZQuery1.Fields[3].AsString;
  edit4.Date:=ZQuery1.Fields[4].AsDateTime;
  edit5.Text:=ZQuery1.Fields[5].AsString;
end;

procedure TKaryawan.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
ZQuery1.Delete;
end;

procedure TKaryawan.Button4Click(Sender: TObject);
begin
 frxReport1.ShowReport();
end;

end.
