unit FMasStif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Matrix;

type
  TForm12 = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
Element[GlobalPointer].Mas:=StrToFloat(Edit1.Text);
Element[GlobalPointer].stiff:=StrToFloat(Edit2.Text);
Element[GlobalPointer].L:=0;
Close();
end;

procedure TForm12.FormShow(Sender: TObject);
begin
Edit1.Text:='0';
Edit2.Text:='0';
end;

end.
