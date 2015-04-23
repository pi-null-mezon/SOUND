unit FRootmachine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Matrix, Multy, FGraph, FFreqDialog;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Y:real;
implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
Var S:string;
    flag:boolean;
    i:integer;
begin
flag:=false;
for i:=0 to high(Element) do begin
if Element[i].L<0 then flag:=true;
Element[i].draw:=false;
end;

if flag <> true then
begin
 Showmessage('Длины всех звеньев определены!');
 Exit;
End;

Y:= root(Element, 2, 1, StrToFloat(Edit1.Text), StrToFloat(Edit2.Text), StrToFloat(Edit3.Text));
Str(Y:8:6,S);
Edit4.Text:=S;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
FGraph.Form4.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
FFreqDialog.Form8.ShowModal;
end;

procedure TForm3.Button3Click(Sender: TObject);
Var i:integer;
begin
for i:=0 to high(Element) do
if (Element[i].L<0) then Element[i].L:=Y;
end;

end.
