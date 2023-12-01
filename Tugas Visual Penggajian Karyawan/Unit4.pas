unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls,
  frxDBSet;

type
  TPajak = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edit1: TEdit;
    edit2: TEdit;
    edit3: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    edit4: TComboBox;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    DataSource1: TDataSource;
    Label1: TLabel;
    edit5: TEdit;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pajak: TPajak;

implementation

{$R *.dfm}

procedure TPajak.Button1Click(Sender: TObject);
begin
 ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_pajak values(null,"'+edit1.Text+'", "'+edit2.Text+'", "'+FormatDateTime('yyyy-mm-dd',edit3.Date)+'", "'+edit4.Text+'", "'+edit5.Text+'")');
  zQuery1.ExecSQL;

  zQuery1.SQL.Clear;
  zQuery1.SQL.Add('select * from tb_pajak');
  zQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN')
end;

procedure TPajak.Button2Click(Sender: TObject);
begin
ZQuery1.Edit;
  ZQuery1.FieldByName('nama_pajak').Text := edit1.Text;
  ZQuery1.FieldByName('tarif_pajak').Text := edit2.Text;
  ZQuery1.FieldByName('batas_pajak').AsDateTime := edit3.date;
  ZQuery1.FieldByName('tipe_pajak').Text := edit4.Text;
  ZQuery1.FieldByName('status_pajak').Text := edit5.Text;
  ZQuery1.Post;
end;

procedure TPajak.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
ZQuery1.Delete;
end;

procedure TPajak.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=ZQuery1.Fields[1].AsString;
  edit2.Text:=ZQuery1.Fields[2].AsString;
  edit3.date:=ZQuery1.Fields[3].AsDateTime;
  edit4.Text:=ZQuery1.Fields[4].AsString;
  edit5.Text:=ZQuery1.Fields[5].AsString;
end;

end.
