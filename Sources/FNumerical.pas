unit FNumerical;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, TeeFunci, Series, ExtCtrls, TeeProcs, Chart, Matrix,
  Multy, ComCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    Series2: TLineSeries;
    TeeFunction2: TAddTeeFunction;
    Button1: TButton;
    MAX: TEdit;
    MIN: TEdit;
    Num: TEdit;
    U0: TEdit;
    ComboBox2: TComboBox;
    Chart2: TChart;
    LineSeries1: TLineSeries;
    AddTeeFunction1: TAddTeeFunction;
    LineSeries2: TLineSeries;
    AddTeeFunction2: TAddTeeFunction;
    SigmaMAX: TEdit;
    SigmaMIN: TEdit;
    Label7: TLabel;
    Amp: TEdit;
    GroupBox1: TGroupBox;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Chart3: TChart;
    Series3: TLineSeries;
    TeeFunction3: TAddTeeFunction;
    LeftBound: TEdit;
    RightBound: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    AFCHNum: TEdit;
    Label10: TLabel;
    TrackBar1: TTrackBar;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;
  Flash:array of Zveno;
implementation

{$R *.dfm}

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Flash:=nil;
end;

procedure TForm14.ComboBox2Change(Sender: TObject);
Var i:integer;
begin
Case Combobox2.ItemIndex of
0: begin
   Setlength(Flash,length(Element));
   for i:=0 to high(Element) do
   Flash[i]:=Element[i];
   end;
1: begin
   Setlength(Flash,length(WC));
   for i:=0 to high(WC) do
   Flash[i]:=WC[i];
   end;
end;
end;

procedure TForm14.Button1Click(Sender: TObject);
Var i:integer;
    M:flex;
    S:string;
begin

if Combobox2.ItemIndex = -1 then
begin
 Showmessage('Не выбран объект!');
 Exit;
End;
if (Combobox2.ItemIndex=1) and (Length(WC)=0) then
begin
 Showmessage('Для интегрирования введите хотя бы один элемент в стек!');
 Exit;
end;

Series1.Clear;
Series2.Clear;
LineSeries1.Clear;
LineSeries2.Clear;

RUKU(M,Flash,StrToInt(Num.Text),StrToFloat(U0.Text));
for i:=0 to high(M) do
begin
Series1.AddXY(M[i,0],M[i,1]);
Series2.AddXY(M[i,0],0);
LineSeries1.AddXY(M[i,0],M[i,2]);
LineSeries2.AddXY(M[i,0],0);
end;

Str(Series1.MaxYValue:2:4,S);
MAX.Text:=S;
Str(Series1.MinYValue:2:4,S);
MIN.Text:=S;
Str(LineSeries1.MaxYValue:2:4,S);
SigmaMAX.Text:=S;
Str(LineSeries1.MinYValue:2:4,S);
SigmaMIN.Text:=S;
Str((M[high(M),1]/M[0,1]):2:1,S);
Amp.Text:=S;
end;

procedure TForm14.FormShow(Sender: TObject);
begin
Series1.Clear;
Series2.Clear;
LineSeries1.Clear;
LineSeries2.Clear;
MAX.Text:='no data';
MIN.Text:='no data';
Amp.Text:='no data';
SigmaMAX.Text:='no data';
SigmaMIN.Text:='no data';
Combobox2.ItemIndex:=-1;
Combobox2.Text:='Выберите объект для решения задачи';
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
if Combobox2.ItemIndex = -1 then
begin
 Showmessage('Не выбран объект!');
 Exit;
End;
if (Combobox2.ItemIndex=1) and (Length(WC)=0) then
begin
 Showmessage('Для интегрирования введите хотя бы один элемент в стек!');
 Exit;
end;
Groupbox2.Visible:=true;
LeftBound.Text:=FloatToStr(Flash[0].freq-6000);
RightBound.Text:=FloatToStr(Flash[0].freq+6000);
end;

procedure TForm14.Button3Click(Sender: TObject);
begin
Groupbox2.Visible:=false;
end;

procedure TForm14.Button4Click(Sender: TObject);
Var A:array of array [1..2] of real;
    M:flex;
    step:real;
    i,j:integer;
    stack:real;
begin
if (Combobox2.ItemIndex=1) and (Length(WC)=0) then
begin
 Showmessage('Для интегрирования введите хотя бы один элемент в стек!');
 Exit;
end;
stack:=Flash[0].freq;
Series3.Clear;
step:=abs(StrToFloat(RightBound.Text)-StrToFloat(LeftBound.Text))/StrToInt(AFCHNum.Text);
Setlength(A,StrToInt(AFCHNum.Text)+1);
for i:=0 to high(A) do
begin
 for j:=0 to high (Flash) do
  Flash[j].freq:=StrToFloat(LeftBound.Text)+i*step;
A[i,1]:=Flash[0].freq;
RUKU(M,Flash,StrToInt(Num.Text),StrToFloat(U0.Text));
A[i,2]:=M[high(M),1];
Series3.AddXY(A[i,1],A[i,2]);
end;
for j:=0 to high (Flash) do
  Flash[j].freq:=stack;
end;

procedure TForm14.TrackBar1Change(Sender: TObject);
begin
AFCHNum.Text:=FloatToStr(TrackBar1.Position);
end;

end.
