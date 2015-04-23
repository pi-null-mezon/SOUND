unit FPiezo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Matrix;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    h33: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    tgd: TEdit;
    Label4: TLabel;
    eps: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
Element[GlobalPointer].h33:=StrToFloat(h33.Text)*exp(9*ln(10));
Element[GlobalPointer].tgdelta:=StrToFloat(tgd.Text)/100;
Element[GlobalPointer].eps:=StrToFloat(eps.Text);
Close();
end;

end.
