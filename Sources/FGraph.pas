unit FGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, TeeFunci, Series, Multy, Matrix;

type
  TForm4 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
Var i:integer;
    x:real;
begin

for i:=0 to high(Element) do
Element[i].draw:=false;

x:=0.001;
Series1.Clear;
 for i:=1 to 1000 do
  begin
   x:=x+0.001;
   Series1.AddXY(x,MulT(Element,x)[2,1]);
end;

end;

end.
