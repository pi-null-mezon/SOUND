unit FFreqDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Matrix, StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
Var i:integer;
begin
for i:=0 to high(Element) do
Element[i].freq:=StrToFloat(Edit1.Text);
Close();
end;

end.
