unit FDraw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Matrix, FFreqDialog, TeEngine, TeeFunci,
  Series, ExtCtrls, TeeProcs, Chart, Multy;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    TeeFunction1: TAddTeeFunction;
    Series2: TLineSeries;
    TeeFunction2: TAddTeeFunction;
    Series3: TLineSeries;
    TeeFunction3: TAddTeeFunction;
    Button2: TButton;
    ComboBox1: TComboBox;
    Chart2: TChart;
    Series4: TLineSeries;
    TeeFunction4: TAddTeeFunction;
    Series5: TLineSeries;
    TeeFunction5: TAddTeeFunction;
    Series6: TLineSeries;
    TeeFunction6: TAddTeeFunction;
    Chart3: TChart;
    AddTeeFunction1: TAddTeeFunction;
    LineSeries2: TLineSeries;
    AddTeeFunction2: TAddTeeFunction;
    rightboundU: TEdit;
    Label2: TLabel;
    LineSeries1: TLineSeries;
    Label3: TLabel;
    Amplify: TEdit;
    Label4: TLabel;
    MaxSigma: TEdit;
    Label5: TLabel;
    MinSigma: TEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    TOpt: TEdit;
    TLength: TEdit;
    TD1: TEdit;
    TD2: TEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    OLength: TEdit;
    OD1: TEdit;
    OD2: TEdit;
    TempNum: TEdit;
    Button6: TButton;
    WhatFor: TComboBox;
    Button7: TButton;
    Label15: TLabel;
    Button8: TButton;
    Amp: TEdit;
    Edit2: TEdit;
    Lable16: TLabel;
    Chart4: TChart;
    Series7: TLineSeries;
    TeeFunction7: TAddTeeFunction;
    Series8: TLineSeries;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TOptChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure TD1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  DrawTemp:array of Zveno;
  index:integer;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
Var x, Length, U0 ,N0, tempU, tempN:real;
    k,i:integer;
    S:string;
begin
 if Combobox1.ItemIndex=-1 then
  begin
   Showmessage('Укажите для чего строить эпюры!');
   Exit;
  end;

 Series5.Clear;
 Series6.Clear;
 LineSeries1.Clear;
 LineSeries2.Clear;

 Length:=0;
 U0:=StrToFloat(Edit1.Text);
 N0:=0;
 for k:=0 to high(DrawTemp) do
  begin
  DrawTemp[k].draw:=true;
   x:=0;
   tempU:=U0;
   tempN:=N0;
    for i:=1 to 1000 do
      begin
       x:=x+DrawTemp[k].L/1000;
       Series5.AddXY(1000*(x+Length),(DrawTemp[k].fun(x)[1,1]*U0+DrawTemp[k].fun(x)[1,2]*N0));
       Series6.AddXY(1000*(x+Length),0);
       LineSeries1.AddXY(1000*(x+Length),((DrawTemp[k].fun(x)[2,1]*U0+N0*DrawTemp[k].fun(x)[2,2])/(pi*sqr(DrawTemp[k].diametr(x))/4))/1000000000000);
       LineSeries2.AddXY(1000*(x+Length),0);
      end;
      Length:=Length+DrawTemp[k].L;
      U0:=DrawTemp[k].fun(DrawTemp[k].L)[1,1]*tempU+DrawTemp[k].fun(DrawTemp[k].L)[1,2]*tempN;
      N0:=DrawTemp[k].fun(DrawTemp[k].L)[2,1]*tempU+DrawTemp[k].fun(DrawTemp[k].L)[2,2]*tempN;
  end;
   Str(U0:2:2,S);
  rightboundU.Text:=S;
   Str(U0/StrToFloat(Edit1.Text):2:2,S);
  Amplify.Text:=S;
   Str(LineSeries1.MaxYValue:2:4,S);
  MaxSigma.Text:=S;
   Str(LineSeries1.MinYValue:2:4,S);
  MinSigma.Text:=S;
End;

procedure TForm9.FormShow(Sender: TObject);
begin

if Element[0].freq=0 then FFreqDialog.Form8.Showmodal;
Series1.Clear;
Series2.Clear;
Series3.Clear;
Series4.Clear;
Series5.Clear;
Series6.Clear;
LineSeries1.Clear;
LineSeries2.Clear;

Amplify.Text:='no data';
MaxSigma.Text:='no data';
MinSigma.Text:='no data';
rightboundU.Text:='no data';

index:=0;
GroupBox2.Visible:=false;
TLength.Text:='no data';
TD1.Text:='no data';
TD2.Text:='no data';
OLength.Text:='no data';
OD1.Text:='no data';
OD2.Text:='no data';
WhatFor.ItemIndex:=-1;
WhatFor.Text:='Выберите параметр для варьирования';
Amp.Text:='5';

Combobox1.ItemIndex:=-1;
Combobox1.Text:='Выберите объект для построения';
end;

procedure TForm9.Button2Click(Sender: TObject);
Var Length,x, max:real; i,k:integer;
begin

 if Combobox1.ItemIndex=-1 then
 begin
 Showmessage('Укажите для чего строить эпюры!');
 Exit;
 end;

 max:=0;
 for k:=0 to high(DrawTemp) do
 begin
  if DrawTemp[k].D1> max then max:=DrawTemp[k].D1;
  if DrawTemp[k].D2> max then max:=DrawTemp[k].D2;
 end;

Series1.Clear;
Series2.Clear;
Series3.Clear;
Series4.Clear;
 {множитель 1000 для перевода в мм}
Length:=0;
 for k:=0 to high(DrawTemp) do
  begin
  x:=0;
  Series2.AddXY(1000*Length,0);
  Series3.AddXY(1000*Length,0);
   for i:=1 to 1000 do
    begin
    x:=x+DrawTemp[k].L/1000;
    Series1.AddXY(1000*(x+Length), max*1000);
    Series2.AddXY(1000*(x+Length),1000*DrawTemp[k].diametr(x)/2);
    Series3.AddXY(1000*(x+Length),-1000*DrawTemp[k].diametr(x)/2);
    Series4.AddXY(1000*(x+Length), -max*1000);
    end;
    Length:=Length+DrawTemp[k].L;
    end;
Series2.AddXY(1000*Length,0);
Series3.AddXY(1000*Length,0);
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
Var k:integer;
begin
case combobox1.ItemIndex of
0: begin
   Setlength(DrawTemp,length(Element));
   for k:=0 to high(Element) do
   DrawTemp[k]:=Element[k];
   end;
1: begin
   Setlength(DrawTemp,length(WC));
   for k:=0 to high(WC) do
   DrawTemp[k]:=WC[k];
   end;
end;
End;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DrawTemp:=nil;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
FFreqDialog.Form8.ShowModal;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
GroupBox2.Visible:=false;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
 if Combobox1.ItemIndex=-1 then
  begin
   Showmessage('Выберите объект!');
  Exit;
  end;
GroupBox2.Visible:=true;
 TempNum.Text:=IntToStr(Length(DrawTemp));
  TOpt.Text:='enter some value';
   index:=0;
    TLength.Text:='no data';
     TD1.Text:='no data';
      TD2.Text:='no data';
       OLength.Text:='no data';
        OD1.Text:='no data';
         OD2.Text:='no data';
Edit2.Text:=Amplify.Text;
Amp.Text:='-5';
Series7.Clear;
Series8.Clear;
end;

procedure TForm9.TOptChange(Sender: TObject);
Begin
if (TOpt.text<>'enter some value') then begin
if (StrToInt(TOpt.Text)<1) or (StrToInt(TOpt.Text)>Length(DrawTemp)) then
 begin
  Showmessage('Недопустимое значение!');
   TLength.Text:='no data';
   TD1.Text:='no data';
   TD2.Text:='no data';
  Exit;
 end;
index:=StrToInt(TOpt.Text)-1;
TLength.Text:=FloatToStr(DrawTemp[index].L*1000);
TD1.Text:=FloatToStr(DrawTemp[index].D1*1000);
TD2.Text:=FloatToStr(DrawTemp[index].D2*1000);

Case DrawTemp[index].shape of
cilinder: begin
           TD2.ReadOnly:=true;
           OD2.ReadOnly:=true;
          end;
piezo: begin
        TD2.ReadOnly:=true;
        OD2.ReadOnly:=true;
       end;
cone: begin
       TD2.ReadOnly:=false;
       OD2.ReadOnly:=false;
      end;
exponent: begin
           TD2.ReadOnly:=false;
           OD2.ReadOnly:=false;
          end;
masstif: begin
          TLength.ReadOnly:=true;
          OLength.ReadOnly:=true;
         end;
end;
end;
End;

procedure TForm9.Button6Click(Sender: TObject);
begin
if (TLength.Text='no data') or (TD1.Text='no data') or (TD2.Text='no data') then
 begin
  Showmessage('Недопустимые значения полей!');
  Exit;
 end;
Showmessage('Параметры выбранного звена будут изменены!');
DrawTemp[index].L:=StrToFloat(TLength.Text)/1000;
DrawTemp[index].D1:=StrToFloat(TD1.Text)/1000;
DrawTemp[index].D2:=StrToFloat(TD2.Text)/1000;

end;

procedure TForm9.Button8Click(Sender: TObject);
begin
if (OLength.Text='no data') or (OD1.Text='no data') or (OD2.Text='no data') then
 begin
  showmessage('Оптимизация ещё не проведена!');
  exit;
 end;
Showmessage('Параметры выбранного звена будут изменены!');
DrawTemp[index].L:=StrToFloat(OLength.Text)/1000;
DrawTemp[index].D1:=StrToFloat(OD1.Text)/1000;
DrawTemp[index].D2:=StrToFloat(OD2.Text)/1000;
end;

procedure TForm9.Button7Click(Sender: TObject);
Type stack = record
     L,D1,D2:real end;
Var K0,K:real;
    i:integer;
    S:string;
    memory:stack;
 function optimum(x1,x2,eps: real):real;
 Var Y1, Y2, Ymid, step, mid:real;
 Begin
  step:=x2-x1;
  Case WhatFor.ItemIndex of
   0: DrawTemp[index].D1:=x1;
   1: DrawTemp[index].D2:=x1;
  end;
  Y1:=K0-MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001))[1,1];

  Case WhatFor.ItemIndex of
   0: DrawTemp[index].D1:=x2;
   1: DrawTemp[index].D2:=x2;
  end;
  Y2:=K0-MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001))[1,1];

  while (Y1*Y2>0) do
  begin
   x1:=x2;
   Y1:=Y2;
   x2:=x2+step;
     Case WhatFor.ItemIndex of
   0: DrawTemp[index].D1:=x2;
   1: DrawTemp[index].D2:=x2;
  end;
  Y2:=K0-MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001))[1,1];
  end;

  mid := (x2+x1)/2.0;
  Case WhatFor.ItemIndex of
   0: DrawTemp[index].D1:=mid;
   1: DrawTemp[index].D2:=mid;
  end;
  Ymid:=K0-MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001))[1,1];

  while (abs(x2-x1) > eps) do
  begin
  if (Y1*Ymid>0) then begin
   x1:=mid;
   Y1:=Ymid;
  end
  else begin
   x2:=mid;
   Y2:=Ymid;
  end;
  mid:=(x2+x1)/2.0;
  Case WhatFor.ItemIndex of
   0: DrawTemp[index].D1:=mid;
   1: DrawTemp[index].D2:=mid;
  end;
  Ymid:=K0-MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001))[1,1];
  end;
  optimum:=x1+(x1-x2)*Y1/(Y2-Y1);
  end;

begin
if ((TOpt.Text='enter some value') or (WhatFor.ItemIndex=-1)) or ((StrToInt(TOpt.Text)<1) or (StrToInt(TOpt.Text)>Length(DrawTemp))) then
begin
 Showmessage('Задача оптимизации не определена!');
 Exit;
end;
for i:=0 to high(DrawTemp) do
 DrawTemp[i].draw:=false;
K0:=StrToFloat(Amp.Text);
 memory.L:=DrawTemp[index].L;
  memory.D1:=DrawTemp[index].D1;
   memory.D2:=DrawTemp[index].D2;
DrawTemp[index].L:=-1;{указатель на расчёт индексного звена}
Case WhatFor.ItemIndex of
 0: begin
     DrawTemp[index].D1:=optimum(0.0001,0.0002,0.00001);
     DrawTemp[index].D2:=memory.D2;
     OLength.Text:=FloatToStr(root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001)*1000);
     OD1.Text:=FloatToStr(DrawTemp[index].D1*1000);
     OD2.Text:=FloatToStr(memory.D2*1000);
    end;
 1: begin
     DrawTemp[index].D2:=optimum(0.0001,0.0002,0.00001);
     DrawTemp[index].D1:=memory.D1;
     OLength.Text:=FloatToStr(root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.00001)*1000);
     OD2.Text:=FloatToStr(DrawTemp[index].D2*1000);
     OD1.Text:=FloatToStr(memory.D1*1000);
    end;
end;
DrawTemp[index].L:=memory.L;
 DrawTemp[index].D1:=memory.D1;
  DrawTemp[index].D2:=memory.D2;
end;

procedure TForm9.Button9Click(Sender: TObject);
Type stack = record
     L,D1,D2:real end;
Var K0,K:real;
    i:integer;
    memory:stack;
Begin
Series7.Clear;
Series8.Clear;
if ((TOpt.Text='enter some value') or (WhatFor.ItemIndex=-1)) or ((StrToInt(TOpt.Text)<1) or (StrToInt(TOpt.Text)>Length(DrawTemp))) then
begin
 Showmessage('Задача оптимизации не определена!');
 Exit;
end;
for i:=0 to high(DrawTemp) do
 DrawTemp[i].draw:=false;
K0:=StrToFloat(Amp.Text);
  memory.L:=DrawTemp[index].L;
 memory.D1:=DrawTemp[index].D1;
memory.D2:=DrawTemp[index].D2;
DrawTemp[index].L:=-1;{указатель на расчёт индексного звена}
for i:=1 to 500 do
begin
Case WhatFor.ItemIndex of
 0: DrawTemp[index].D1:=i*0.0001;
 1: DrawTemp[index].D2:=i*0.0001;
end;
 K:=MulT(DrawTemp,root(DrawTemp, 2, 1, 0.0001, 0.0002, 0.0001))[1,1];
Case WhatFor.ItemIndex of
 0: begin
    Series7.AddXY(DrawTemp[index].D1*1000,K);
    Series8.AddXY(DrawTemp[index].D1*1000,K0);
    end;
 1: begin
    Series7.AddXY(DrawTemp[index].D2*1000,K);
    Series8.AddXY(DrawTemp[index].D2*1000,K0);
    end;
end;
end;
DrawTemp[index].L:=memory.L;
 DrawTemp[index].D1:=memory.D1;
  DrawTemp[index].D2:=memory.D2;
End;

procedure TForm9.TD1Change(Sender: TObject);
begin
if (Length(DrawTemp)<>0) and ((DrawTemp[index].shape=cilinder) or (DrawTemp[index].shape=piezo)) then
TD2.Text:=TD1.Text;
end;

End.
