unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls,
  frxDBSet;

type
  TAbsensi = class(TForm)
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
    edit2: TDateTimePicker;
    edit1: TEdit;
    frxDBDataset1: TfrxDBDataset;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Absensi: TAbsensi;

implementation

{$R *.dfm}

procedure TAbsensi.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_absensi values(null,"'+edit1.Text+'", "'+FormatDateTime('yyyy-mm-dd',edit2.Date)+'", "'+edit3.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_absensi');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TAbsensi.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=ZQuery1.Fields[0].AsString;
edit2.Date:=zQuery1.Fields[1].AsDateTime;
  edit3.Text:=ZQuery1.Fields[2].AsString;

end;

procedure TAbsensi.Button2Click(Sender: TObject);
begin
 ZQuery1.Edit;
  ZQuery1.FieldByName('id_absensi').Text := edit1.Text;
  ZQuery1.FieldByName('tgl_absensi').AsDateTime := edit2.date;
  ZQuery1.FieldByName('jenis_absen').Text := edit3.Text;
end;

procedure TAbsensi.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
ZQuery1.Delete;
end;

procedure TAbsensi.Button4Click(Sender: TObject);
begin
 frxReport1.ShowReport();
end;

end.
