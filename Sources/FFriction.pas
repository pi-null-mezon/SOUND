unit FFriction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, TeeFunci, Series, ExtCtrls, TeeProcs, Chart,
  Matrix, Multy, ComCtrls;

type
  TForm11 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    Button1: TButton;
    Num: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Series2: TLineSeries;
    TeeFunction2: TAddTeeFunction;
    Chart2: TChart;
    LineSeries1: TLineSeries;
    AddTeeFunction1: TAddTeeFunction;
    LineSeries2: TLineSeries;
    AddTeeFunction2: TAddTeeFunction;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    MAX: TEdit;
    MIN: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    SigmaMAX: TEdit;
    SigmaMIN: TEdit;
    Label2: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    I1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    I2: TEdit;
    TrackBar1: TTrackBar;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    R: TEdit;
    Xc: TEdit;
    Draw: TComboBox;
    Label10: TLabel;
    Amp: TEdit;
    AFCH: TGroupBox;
    Button2: TButton;
    AFCHDraw: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button3: TButton;
    Chart3: TChart;
    Series3: TLineSeries;
    TeeFunction3: TAddTeeFunction;
    LeftBound: TEdit;
    RightBound: TEdit;
    AFCHNum: TEdit;
    Button4: TButton;
    TrackBar2: TTrackBar;
    Electric: TGroupBox;
    Button6: TButton;
    GroupBox5: TGroupBox;
    Button5: TButton;
    Chart4: TChart;
    Series4: TLineSeries;
    TeeFunction4: TAddTeeFunction;
    Chart5: TChart;
    LineSeries3: TLineSeries;
    AddTeeFunction3: TAddTeeFunction;
    Label14: TLabel;
    MaxZ: TEdit;
    GroupBox6: TGroupBox;
    SumMas: TButton;
    Summmas: TEdit;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SumMasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  Friction:array of Zveno;
  D:Superflex; {для интегрироваия}

implementation
{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
Var i:integer;
    check:boolean;
    S:string;
    Z:Elimp;
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
if Draw.ItemIndex = -1 then
begin
 Showmessage('Не выбраны эпюры для построения!');
 Exit;
End;
 Series1.Clear;
 Series2.Clear;
 LineSeries1.Clear;
 LineSeries2.Clear;
RUKU2(D,Friction,StrToInt(Num.Text),StrToFLoat(I1.Text)/1000,StrToFLoat(I2.Text)/1000,StrToFloat(R.Text),StrToFloat(Xc.Text),Z);
Case Draw.ItemIndex of
0: for i:=0 to high(D) do
    begin
     Series1.AddXY(D[i,0],D[i,1]);
     Series2.AddXY(D[i,0],0);
     LineSeries1.AddXY(D[i,0],D[i,3]);
     LineSeries2.AddXY(D[i,0],0);
    end;
1: for i:=0 to high(D) do
    begin
     Series1.AddXY(D[i,0],D[i,2]);
     Series2.AddXY(D[i,0],0);
     LineSeries1.AddXY(D[i,0],D[i,4]);
     LineSeries2.AddXY(D[i,0],0);
    end;
2: for i:=0 to high(D) do
    begin
     Series1.AddXY(D[i,0],sqrt(sqr(D[i,1])+sqr(D[i,2])));
     Series2.AddXY(D[i,0],0);
     LineSeries1.AddXY(D[i,0],sqrt(sqr(D[i,3])+sqr(D[i,4])));
     LineSeries2.AddXY(D[i,0],0);
    end;
end;
Str(Series1.MaxYValue:2:4,S);
MAX.Text:=S;
Str(Series1.MinYValue:2:4,S);
MIN.Text:=S;
Str(LineSeries1.MaxYValue:2:4,S);
SigmaMAX.Text:=S;
Str(LineSeries1.MinYValue:2:4,S);
SigmaMIN.Text:=S;
 check:=false;
  for i:=0 to high (Friction) do
  if Friction[i].shape = piezo then check:=true;
if check = true then
 Case Draw.ItemIndex of
  0: Str((D[high(D),1]/D[0,1]):2:1,S);
  1: Str((D[high(D),2]/D[0,2]):2:1,S);
  2: Str(sqrt(sqr(D[high(D),1])+sqr(D[high(D),2]))/sqrt(sqr(D[0,1])+sqr(D[0,2])):2:1,S);
 end;
Amp.Text:=S;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
Series1.Clear;
Series2.Clear;
LineSeries1.Clear;
LineSeries2.Clear;
MAX.Text:='no data';
MIN.Text:='no data';
Amp.Text:='no data';
Summmas.Text:='no data';
SigmaMAX.Text:='no data';
SigmaMIN.Text:='no data';
Combobox2.ItemIndex:=-1;
Combobox2.Text:='Выберите объект для решения задачи';
Draw.ItemIndex:=2;
MaxZ.Text:='no data';
end;

procedure TForm11.ComboBox2Change(Sender: TObject);
Var i:integer;
begin
Case Combobox2.ItemIndex of
0: begin
   Setlength(Friction,length(Element));
   for i:=0 to high(Element) do
   Friction[i]:=Element[i];
   end;
1: begin
   Setlength(Friction,length(WC));
   for i:=0 to high(WC) do
   Friction[i]:=WC[i];
   end;
end;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Friction:=nil;
end;

procedure TForm11.TrackBar1Change(Sender: TObject);
begin
Num.Text:=FloatToStr(TrackBar1.Position);
end;

procedure TForm11.Button2Click(Sender: TObject);
Var flag:boolean;
    i:integer;
begin
if Combobox2.ItemIndex = -1 then
begin
 Showmessage('Не выбран объект!');
 Exit;
End;

flag:=false;
for i:=0 to high(Friction) do
if Friction[i].shape=piezo then flag:=true;

if flag = false then
begin
Showmessage('В состав объекта не входит ни одного пьезоэлемента!');
Exit;
end;

Series3.Clear;
Series4.Clear;
LineSeries3.Clear;
AFCHDraw.Visible:=true;
LeftBound.Text:=FloatToStr(Friction[0].freq-1000);
RightBound.Text:=FloatToStr(Friction[0].freq+1000);
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
AFCHDraw.Visible:=false;
Electric.Visible:=false;
end;

procedure TForm11.Button4Click(Sender: TObject);
Var A:array of array [1..4] of real;
    step:real;
    i,j:integer;
    stack:real;
    Z:Elimp;
    S:string;
begin
if (Combobox2.ItemIndex=1) and (Length(WC)=0) then
begin
 Showmessage('Для интегрирования введите хотя бы один элемент в стек!');
 Exit;
end;
stack:=Friction[0].freq;
Series3.Clear;
Series4.Clear;
LineSeries3.Clear;
step:=abs(StrToFloat(RightBound.Text)-StrToFloat(LeftBound.Text))/StrToInt(AFCHNum.Text);
Setlength(A,StrToInt(AFCHNum.Text)+1);
for i:=0 to high(A) do
begin
 for j:=0 to high (Friction) do
  Friction[j].freq:=StrToFloat(LeftBound.Text)+i*step;
 A[i,1]:=Friction[0].freq;
 RUKU2(D,Friction,StrToInt(Num.Text),StrToFLoat(I1.Text)/1000,StrToFLoat(I2.Text)/1000,StrToFloat(R.Text),StrToFloat(Xc.Text),Z);
 A[i,2]:=D[high(D),1];
 A[i,3]:=D[high(D),2];
 A[i,4]:=sqrt(sqr(D[high(D),1])+sqr(D[high(D),2]));
  Case Draw.ItemIndex of
   0: Series3.AddXY(A[i,1],A[i,2]);
   1: Series3.AddXY(A[i,1],A[i,3]);
   2: Series3.AddXY(A[i,1],A[i,4]);
  end;
 Series4.AddXY(A[i,1],sqrt(sqr(Z[1])+sqr(Z[2])));
 LineSeries3.AddXY(A[i,1],ArcTan(Z[2]/Z[1]));
end;
for j:=0 to high (Friction) do
  Friction[j].freq:=stack;
  Str((Series4.MaxYValue/1000000):2:4,S);
  MaxZ.Text:=S;
end;

procedure TForm11.TrackBar2Change(Sender: TObject);
begin
AFCHNum.Text:=FloatToStr(TrackBar2.Position);
end;

procedure TForm11.Button5Click(Sender: TObject);
begin
if length(D)=0 then
begin
 Showmessage('Требуется произвести интегрирование!');
 Exit;
End;
Electric.Visible:=true;
end;

procedure TForm11.Button6Click(Sender: TObject);
begin
Electric.Visible:=false;
end;

procedure TForm11.SumMasClick(Sender: TObject);
var i,j:integer;
    S:string;
    M,Temp,h:real;
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
 M:=0;
 h:=0;
 for i:=0 to high(Friction) do
  Begin
  h:=friction[i].L/StrToInt(Num.Text);
  Temp:=0;
   for j:=0 to (StrToInt(Num.Text)-1) do
    begin
     Temp:=Temp+sqr(Friction[i].diametr(j*h))*pi*h/4
    end;
  M:=M+Temp*Friction[i].density;
  End;
M:=M*1000;
Str(M:2:3,S);
Summmas.Text:=S;
end;

end.
