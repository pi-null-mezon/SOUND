{Taranov A.A.}
unit Multy;

interface

Uses Matrix;

Type flex=array of array[0..2] of real;
     Superflex=array of array[0..4] of real;
     Elimp=array[1..2] of real;

 {function MM(a,b:value_box):value_box;}
 function MulT(A:array of Zveno; x:real):value_box;
 function root(A:array of Zveno; i,j:integer; x1,x2,eps: real):real;
 procedure RUKU(Var M:flex; A:array of Zveno; Num:integer; U0:real);
 procedure RUKU2(Var M:Superflex; A:array of Zveno; Num:integer; Current1,Current2,R,Xc:real; Var Z:Elimp);

implementation

function MulT(A:array of Zveno; x:real):value_box;
 var i,j,k:integer;
 M,Temp:value_box;
 Begin
  M:=A[0].fun(x);
  for k:= 1 to high(A) do begin
  Temp:=M;
  for i:=1 to 2 do
  for j:=1 to 2 do
  M[i,j]:=A[k].fun(x)[i,1]*Temp[1,j]+A[k].fun(x)[i,2]*Temp[2,j];
  end;
  MulT:=M;
 end;

{Функция возвращает матрицу 2x2 полученную перемножением двух исходных}
 {function MM(a,b:value_box):value_box;
 var i,j:integer;
 Begin
  for i:=1 to 2 do
  for j:=1 to 2 do
  begin
  MM[i,j]:=a[i,low(a)]*b[low(b),j]+a[i,high(a)]*b[high(b),j];
  end;
 end; }
{----------------------------------------------------------------}

{Функция для определения корней выражения. Метод половинного деления}
 function root(A:array of Zveno; i,j:integer; x1,x2,eps: real):real;
 Var Y1, Y2, Ymid, step, mid:real;
 Begin
  step:=x2-x1;

  Y1:= MulT(A,x1)[i,j];
  Y2:= MulT(A,x2)[i,j];

  while (Y1*Y2>0) do
  begin
   x1:=x2;
   Y1:=Y2;
   x2:=x2+step;
   Y2:= MulT(A,x2)[i,j];
  end;

  mid := (x2+x1)/2.0;
  Ymid := MulT(A,mid)[i,j];

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
  Ymid := MulT(A,mid)[i,j];
  end;

  root:=x1+(x1-x2)*Y1/(Y2-Y1);

  end;
{----------------------------------------------------------------}

{Процедура заполнения массива Nx5 результатами численного интегрирования системы ОДУ}
{Примечание: алгоритм написан применительно к решению краевой задачи для волновода стационарных продольных колебаний с учётом внутреннего трения}
procedure RUKU(Var M:flex; A:array of Zveno; Num:integer; U0:real);
Var h,Length:real;
    i:integer;
    K1,K2,K3,K4,L1,L2,L3,L4:real;
    Temp:flex;
{подпрограмма определения номера звена по текущей координате}
function zn(x:real):integer;
Var L:real;
    k:integer;
Begin
L:=0;
k:=0;
repeat
 if k > high(A) then
  begin
  zn:=k-1;
  Exit;
  end;
 L:=L+A[k].L;
 inc(k);
until (x>=L-A[k-1].L) and (x<=L);
zn:=k-1;
End;
{подпрограмма вычисления площади поперечного сечения волновода в текущей координате}
function F(x:real):real;
Var tempx,L:real;
    k:integer;
Begin
L:=0;
for k:=0 to (zn(x)-1) do
L:=L+A[k].L;
tempx:=x-L;
F:=pi*sqr(A[zn(x)].diametr(tempx))/4;
End;

function dU(x,y1,y2:real):real;
Begin
 dU:=y2/(sqr(A[zn(x)].c)*A[zn(x)].density*F(x));
end;

function dN(x,y1,y2:real):real;
Begin
 dN:=-A[zn(x)].density*F(x)*sqr(2*pi*A[zn(x)].freq)*y1;
end;

Begin
  Length:=0;
   for i:=0 to high(A) do
   Length:=Length+A[i].L;
  h:=Length/Num; {определяем шаг интегрирования}
Setlength(Temp,Num+1);
 Temp[0,0]:=0;
 Temp[0,1]:=U0;{НУ для перемещения}
 Temp[0,2]:=0;{НУ для усилия}
for i:=1 to high(Temp) do
 begin
 {if i=high(Temp) then h:=h-h*exp(-3*ln(10))};{во избежание неопределённости}
 Temp[i,0]:=Temp[i-1,0]+h;
  K1:= dU(Temp[i-1,0],Temp[i-1,1],Temp[i-1,2]);
   L1:= dN(Temp[i-1,0],Temp[i-1,1],Temp[i-1,2]);
  K2:= dU(Temp[i-1,0]+h/2,Temp[i-1,1]+K1*h/2,Temp[i-1,2]+L1*h/2);
   L2:= dN(Temp[i-1,0]+h/2,Temp[i-1,1]+K1*h/2,Temp[i-1,2]+L1*h/2);
  K3:= dU(Temp[i-1,0]+h/2,Temp[i-1,1]+K2*h/2,Temp[i-1,2]+L2*h/2);
   L3:= dN(Temp[i-1,0]+h/2,Temp[i-1,1]+K2*h/2,Temp[i-1,2]+L2*h/2);
  K4:= dU(Temp[i-1,0]+h,Temp[i-1,1]+K3*h,Temp[i-1,2]+L3*h);
   L4:= dN(Temp[i-1,0]+h,Temp[i-1,1]+K3*h,Temp[i-1,2]+L3*h);
 Temp[i,1]:= Temp[i-1,1]+(K1+2*K2+2*K3+K4)*h/6;
 Temp[i,2]:= Temp[i-1,2]+(L1+2*L2+2*L3+L4)*h/6;
 end;
 for i:=0 to high(Temp) do
 Begin
 Temp[i,2]:=Temp[i,2]/(exp(ln(10)*12)*F(Temp[i,0]));
 Temp[i,0]:=Temp[i,0]*1000;{перевод в мм}
 End;
M:=Copy(Temp);
End;

{-------------------------------------------------------------------------------------}
procedure RUKU2(Var M:Superflex; A:array of Zveno; Num:integer; Current1,Current2,R,Xc:real;Var Z:Elimp);
Var h,Length:real;
    i,point,j:integer;
    K1,K2,K3,K4,L1,L2,L3,L4,P1,P2,P3,P4,M1,M2,M3,M4:real;
    Temp:array[1..3] of Superflex;
    D1,D2:real;
    C1,C2:real;
    flag:boolean;
    c,b:array[1..3] of real;
{подпрограмма определения номера звена по текущей координате}
function zn(x:real):integer;
Var L:real;
    k:integer;
Begin
L:=0;
k:=0;
repeat
  if k > high(A) then
  begin
  zn:=k-1;
  Exit;
  end;
 L:=L+A[k].L;
 inc(k);
until (x>=L-A[k-1].L) and (x<L);
zn:=k-1;
End;
{подпрограмма вычисления площади поперечного сечения волновода в текущей координате}
function F(x:real):real;
Var tempx,L:real;
    k:integer;
Begin
L:=0;
for k:=0 to (zn(x)-1) do
L:=L+A[k].L;
tempx:=x-L;
F:=pi*sqr(A[zn(x)].diametr(tempx))/4;
End;
{подпрограмма вычисления модуля упругости для волновода в данном сечении}
function E(x:real):real;
Begin
E:=A[zn(x)].density*sqr(A[zn(x)].c);
End;

function place(x:real):integer;
Var k:integer;
Begin
k:=0;
repeat
inc(k);
 if k > high(M) then begin
 place:=k-1;
 Exit;
 end;
until x<=M[k,0];
place:=k-1;
End;

function dU1(x,y1,y2,y3,y4:real;unif:boolean):real;
Begin
 if (A[zn(x)].shape = piezo) and (unif = false) then
begin
 D1:=Current2/(F(x)*2*pi*A[zn(x)].freq);
 D2:=-Current1/(F(x)*2*pi*A[zn(x)].freq);
 dU1:=exp(-1*ln(E(x)*F(x)*(1+sqr(A[zn(x)].psi)/sqr(2*pi))))*(y3+y4*A[zn(x)].psi/(2*pi)+A[zn(x)].h33*F(x)*(D1+D2*A[zn(x)].psi/(2*pi)));
end
 else
 {dU1:=exp(-1*ln(E(x)*F(x)*(1+sqr(A[zn(x)].psi/(2*pi)))))*(y3+y4*A[zn(x)].psi/(2*pi));}
  dU1:=(y3+y4*A[zn(x)].psi/(2*pi))/(E(x)*F(x)*(1+sqr(A[zn(x)].psi/(2*pi))));
 end;

function dU2(x,y1,y2,y3,y4:real;unif:boolean):real;
Begin
 if (A[zn(x)].shape = piezo) and (unif = false) then
 begin
  D1:=Current2/(F(x)*2*pi*A[zn(x)].freq);
  D2:=-Current1/(F(x)*2*pi*A[zn(x)].freq);
  dU2:=exp(-1*ln(E(x)*F(x)*(1+sqr(A[zn(x)].psi/(2*pi)))))*(y4-y3*A[zn(x)].psi/(2*pi)+A[zn(x)].h33*F(x)*(D2-D1*A[zn(x)].psi/(2*pi)));
 end
 else
 dU2:=exp(-1*ln(E(x)*F(x)*(1+sqr(A[zn(x)].psi)/sqr(2*pi))))*(y4-y3*A[zn(x)].psi/(2*pi));
end;

function dN1(x,y1,y2,y3,y4:real):real;
Begin
 dN1:=-A[zn(x)].density*F(x)*sqr(2*pi*A[zn(x)].freq)*y1;
end;

function dN2(x,y1,y2,y3,y4:real):real;
Begin
 dN2:=-A[zn(x)].density*F(x)*sqr(2*pi*A[zn(x)].freq)*y2;
end;

function piezonum:integer;
Var k,l:integer;
Begin
l:=0;
 for k:=0 to high(A) do
  if A[k].shape=piezo then
  inc(l);
piezonum:=l;  
End;  

Begin
  Length:=0;
   for i:=0 to high(A) do
   Length:=Length+A[i].L;
  h:=Length/Num; {определяем шаг интегрирования}

flag:=true;

for point:=1 to 3 do
begin
 Setlength(Temp[point],Num+1);
 Temp[point][0,0]:=0;
 Temp[point][0,1]:=0;{НУ для перемещения}
 Temp[point][0,2]:=0;{НУ для перемещения}
 Temp[point][0,3]:=0;{НУ для усилия}
 Temp[point][0,4]:=0;{НУ для усилия}
  if point=1 then
 Temp[point][0,1]:=1;{НУ для перемещения}
  if point=2 then
 Temp[point][0,2]:=1;{НУ для перемещения}
 if point=3 then flag:=false;
for i:=1 to high(Temp[point]) do
 begin
 {if i=high(Temp[point]) then h:=h-h*exp(-6*ln(10))};{во избежание неопределённости}
 Temp[point][i,0]:=Temp[point][i-1,0]+h;
  K1:= dU1(Temp[point][i-1,0],Temp[point][i-1,1],Temp[point][i-1,2],Temp[point][i-1,3],Temp[point][i-1,4],flag);
   L1:= dU2(Temp[point][i-1,0],Temp[point][i-1,1],Temp[point][i-1,2],Temp[point][i-1,3],Temp[point][i-1,4],flag);
    P1:= dN1(Temp[point][i-1,0],Temp[point][i-1,1],Temp[point][i-1,2],Temp[point][i-1,3],Temp[point][i-1,4]);
     M1:= dN2(Temp[point][i-1,0],Temp[point][i-1,1],Temp[point][i-1,2],Temp[point][i-1,3],Temp[point][i-1,4]);
  K2:= dU1(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K1*h/2,Temp[point][i-1,2]+L1*h/2,Temp[point][i-1,3]+P1*h/2,Temp[point][i-1,4]+M1*h/2,flag);
   L2:= dU2(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K1*h/2,Temp[point][i-1,2]+L1*h/2,Temp[point][i-1,3]+P1*h/2,Temp[point][i-1,4]+M1*h/2,flag);
    P2:= dN1(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K1*h/2,Temp[point][i-1,2]+L1*h/2,Temp[point][i-1,3]+P1*h/2,Temp[point][i-1,4]+M1*h/2);
     M2:= dN2(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K1*h/2,Temp[point][i-1,2]+L1*h/2,Temp[point][i-1,3]+P1*h/2,Temp[point][i-1,4]+M1*h/2);
  K3:= dU1(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K2*h/2,Temp[point][i-1,2]+L2*h/2,Temp[point][i-1,3]+P2*h/2,Temp[point][i-1,4]+M2*h/2,flag);
   L3:= dU2(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K2*h/2,Temp[point][i-1,2]+L2*h/2,Temp[point][i-1,3]+P2*h/2,Temp[point][i-1,4]+M2*h/2,flag);
    P3:= dN1(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K2*h/2,Temp[point][i-1,2]+L2*h/2,Temp[point][i-1,3]+P2*h/2,Temp[point][i-1,4]+M2*h/2);
     M3:= dN2(Temp[point][i-1,0]+h/2,Temp[point][i-1,1]+K2*h/2,Temp[point][i-1,2]+L2*h/2,Temp[point][i-1,3]+P2*h/2,Temp[point][i-1,4]+M2*h/2);
  K4:= dU1(Temp[point][i-1,0]+h,Temp[point][i-1,1]+K3*h,Temp[point][i-1,2]+L3*h,Temp[point][i-1,3]+P3*h,Temp[point][i-1,4]+M3*h,flag);
   L4:= dU2(Temp[point][i-1,0]+h,Temp[point][i-1,1]+K3*h,Temp[point][i-1,2]+L3*h,Temp[point][i-1,3]+P3*h,Temp[point][i-1,4]+M3*h,flag);
    P4:= dN1(Temp[point][i-1,0]+h,Temp[point][i-1,1]+K3*h,Temp[point][i-1,2]+L3*h,Temp[point][i-1,3]+P3*h,Temp[point][i-1,4]+M3*h);
     M4:= dN2(Temp[point][i-1,0]+h,Temp[point][i-1,1]+K3*h,Temp[point][i-1,2]+L3*h,Temp[point][i-1,3]+P3*h,Temp[point][i-1,4]+M3*h);
 Temp[point][i,1]:= Temp[point][i-1,1]+(K1+2*K2+2*K3+K4)*h/6;
 Temp[point][i,2]:= Temp[point][i-1,2]+(L1+2*L2+2*L3+L4)*h/6;
 Temp[point][i,3]:= Temp[point][i-1,3]+(P1+2*P2+2*P3+P4)*h/6;
 Temp[point][i,4]:= Temp[point][i-1,4]+(M1+2*M2+2*M3+M4)*h/6;
 end;
end;

for i:=1 to 3 do
begin
  c[i]:=Temp[i][high(Temp[i]),3]+(2*pi*A[0].freq)*(Xc*Temp[i][high(Temp[i]),1]+R*Temp[i][high(Temp[i]),2]);
  b[i]:=Temp[i][high(Temp[i]),4]+(2*pi*A[0].freq)*(Xc*Temp[i][high(Temp[i]),2]-R*Temp[i][high(Temp[i]),1]);
end;

C2:=((b[1]*c[3]/c[1])-b[3])/(b[2]-(c[2]*b[1]/c[1]));
C1:=-(c[3]+C2*c[2])/c[1];

Setlength(M,Num+1);
 for i:=0 to high(M) do
  begin
   M[i,0]:=Temp[1][i,0];
   for j:=1 to 4 do
   M[i,j]:=C1*Temp[1][i,j]+C2*Temp[2][i,j]+Temp[3][i,j];
 end;

Z[1]:=0;
Z[2]:=0;
j:=0;
Length:=0;
if piezonum > 0 then begin
 for i:=0 to high(A) do begin
  if A[i].shape = piezo then begin
   D1:=Current2/(F((M[place(Length+A[i].L),0]+M[place(Length),0])/2)*2*pi*A[i].freq);
    D2:=-Current1/(F((M[place(Length+A[i].L),0]+M[place(Length),0])/2)*2*pi*A[i].freq);
   Z[1]:=Z[1]+(-A[i].h33*(M[place(Length+A[i].L),1]-M[place(Length),1])+A[i].L*(1/(A[i].eps*8.854187817620*exp(-12*ln(10))))*D1-A[i].L*(1/(A[i].eps*8.854187817620*exp(-12*ln(10))))*D2*A[i].tgdelta)/(Current1);
    Z[2]:=Z[2]+(-A[i].h33*(M[place(Length+A[i].L),2]-M[place(Length),2])+A[i].L*(1/(A[i].eps*8.854187817620*exp(-12*ln(10))))*D2+A[i].L*(1/(A[i].eps*8.854187817620*exp(-12*ln(10))))*D1*A[i].tgdelta)/(Current2);
   inc(j);
  end;
 Length:=Length+A[i].L;
 end;
end;

 for i:=0 to high(M) do
 begin
 M[i,1]:=M[i,1]*1000000;
 M[i,2]:=M[i,2]*1000000;
 M[i,3]:=M[i,3]/(exp(6*ln(10))*F(M[i,0]));
 M[i,4]:=M[i,4]/(exp(6*ln(10))*F(M[i,0]));
 M[i,0]:=M[i,0]*1000;
 end;
End;

end.
