unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, frxClass, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, ComCtrls,
  frxDBSet;

type
  TPembayaran = class(TForm)
    Label3: TLabel;
    Label5: TLabel;
    edit2: TEdit;
    edit1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    DataSource1: TDataSource;
    Label4: TLabel;
    edit3: TComboBox;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pembayaran: TPembayaran;

implementation

{$R *.dfm}

procedure TPembayaran.Button1Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_pembayaran values(null,"'+FormatDateTime('yyyy-mm-dd',edit1.Date)+'", "'+edit2.Text+'", "'+edit3.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_pembayaran');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TPembayaran.DBGrid1CellClick(Column: TColumn);
begin
  edit1.date:=ZQuery1.Fields[1].AsDateTime;
  edit2.Text:=ZQuery1.Fields[2].AsString;
  edit3.Text:=ZQuery1.Fields[3].AsString;
end;

procedure TPembayaran.Button2Click(Sender: TObject);
begin
  ZQuery1.Edit;
  ZQuery1.FieldByName('tgl_pembayaran').AsDateTime := edit1.date;
  ZQuery1.FieldByName('jumlah_pembayaran').Text := edit2.Text;
  ZQuery1.FieldByName('metode_bayar').Text := edit3.Text;
  ZQuery1.Post;
end;

procedure TPembayaran.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
ZQuery1.Delete;
end;

end.
