unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit7, Unit8;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  if Login=nil then
  Login:=TLogin.Create(Application);
  Login.Show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  if FrAkun=nil then
  FrAkun:=TFrAkun.Create(Application);
  FrAkun.Show;
end;

end.
