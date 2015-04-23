{Taranov A.A.}
unit Matrix;

interface

Type

value_box = array [1..2,1..2] of real;

Zveno = class
 L, D1, D2, c, density, Mas, stiff, freq, psi, h33, tgdelta, eps:real;
 shape: (cilinder,cone,exponent,masstif,piezo);
 draw: boolean;
 function fun (x:real):value_box;
 function diametr(x:real):real;
 end;

Var
WC:array of zveno;
Element:array of zveno;
GlobalPointer:integer;

implementation

function Zveno.fun(x:real):value_box;
Var E,F0,Fk:real;

  function square(d:real):real; {вычисление площади сечения круглого профиля}
 Begin
  square:= pi*d*d/4;
 End;
  function mod_E(czv,dens:real):real; {вычисление модуля Юнга}
 Begin
  mod_E:=czv*czv*dens;
 End;
  function shin(x:real):real;
 Begin
 shin:=(exp(x)-exp(-x))/2;
 end;
  function cosh(x:real):real;
 Begin
 cosh:=(exp(x)+exp(-x))/2;
 end;
   function b(x:real):real;
 Begin
  if draw=true then x:=L;
 b:=ln(D1/D2)/x;
 end;
   function a(x:real):real;
 Begin
  if draw=true then x:=L;
 a:= x/(1-D2/D1);
 End;

Begin
E:=mod_E(c,density);
F0:=square(D1);
Fk:=square(D2);

if draw=false then
if L>=0 then x:=L;

Case shape of
cilinder: begin
      {для цилиндрического рупора}
      fun[1,1]:=cos((2*pi*freq/c)*x);
      fun[1,2]:=sin((2*pi*freq/c)*x)/(E*F0*(2*pi*freq/c));
      fun[2,1]:=-E*F0*(2*pi*freq/c)*sin((2*pi*freq/c)*x);
      fun[2,2]:=cos((2*pi*freq/c)*x);
      end;
cone: begin
      if draw=true then Fk:=square(diametr(x));
       {для конического рупора}
      fun[1,1]:= ((sin((2*pi*freq/c)*x)/(2*pi*freq/c))-(a(x)*cos((2*pi*freq/c)*x)))/(x-a(x));
      fun[1,2]:= -(a(x)*sin((2*pi*freq/c)*x))/(E*F0*(2*pi*freq/c)*(x-a(x)));
      fun[2,1]:= (E*Fk/sqr(x-a(x)))*(a(x)*cos((2*pi*freq/c)*x)-(sin((2*pi*freq/c)*x)/(2*pi*freq/c))+(2*pi*freq/c)*(x-a(x))*(a(x)* sin((2*pi*freq/c)*x)+ cos((2*pi*freq/c)*x)/(2*pi*freq/c)));
      fun[2,2]:= (Fk/(F0*sqr(x-a(x))))*((a(x)*sin((2*pi*freq/c)*x)/(2*pi*freq/c))-(x-a(x))*a(x)*cos((2*pi*freq/c)*x));
      end;
exponent: begin
      if draw=true then Fk:=square(diametr(x));
      {для экспоненциального рупора}
      if ((2*pi*freq/c) >= abs(b(x))) then begin
      fun[1,1]:= exp(b(x)*x)*(cos(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x))))-(b(x)/sqrt(sqr((2*pi*freq/c))-sqr(b(x))))*sin(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x)))));
      fun[1,2]:= (exp(b(x)*x)*sin(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x)))))/(F0*E*sqrt(sqr((2*pi*freq/c))-sqr(b(x))));
      fun[2,1]:= -(E*Fk*(sqr(2*pi*freq/c)/sqrt(sqr((2*pi*freq/c))-sqr(b(x))))*exp(b(x)*x)*sin(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x)))));
      fun[2,2]:=(Fk/F0)*exp(b(x)*x)*(cos(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x))))+(b(x)/sqrt(sqr((2*pi*freq/c))-sqr(b(x))))*sin(x*sqrt(sqr((2*pi*freq/c))-sqr(b(x)))));
      end else
      begin
      fun[1,1]:= exp(b(x)*x)*(cosh(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x))))-(b(x)/sqrt(-sqr((2*pi*freq/c))+sqr(b(x))))*shin(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x)))));
      fun[1,2]:= (exp(b(x)*x)*shin(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x)))))/(F0*E*sqrt(-sqr((2*pi*freq/c))+sqr(b(x))));
      fun[2,1]:= -(E*Fk*(sqr(2*pi*freq/c)/sqrt(-sqr((2*pi*freq/c))+sqr(b(x))))*exp(b(x)*x)*shin(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x)))));
      fun[2,2]:=(Fk/F0)*exp(b(x)*x)*(cosh(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x))))+(b(x)/sqrt(-sqr((2*pi*freq/c))+sqr(b(x))))*shin(x*sqrt(-sqr((2*pi*freq/c))+sqr(b(x)))));
      end; end;
masstif: begin
       {для сосредеоточенного элемента}
       fun[1,1]:=1;
       fun[1,2]:=0;
       fun[2,1]:=stiff-(Mas*sqr(2*pi*freq));
       fun[2,2]:=1;
       end;
piezo: begin
       {для цилиндрического рупора}
       fun[1,1]:=cos((2*pi*freq/c)*x);
       fun[1,2]:=sin((2*pi*freq/c)*x)/(E*F0*(2*pi*freq/c));
       fun[2,1]:=-E*F0*(2*pi*freq/c)*sin((2*pi*freq/c)*x);
       fun[2,2]:=cos((2*pi*freq/c)*x);
       end;
end;
End;

function Zveno.diametr(x:real):real;
Var b,a:real;
Begin
 Case shape of
  cilinder:  diametr:=D1;
  exponent: begin b:=ln(D1/D2)/L; diametr:=D1*exp(-b*x); end;
  cone: begin a:= L/(1-D2/D1); diametr:=D1*(1-x/a); end;
  masstif: diametr:=D1;
  piezo: diametr:=D1;
 end;
End;

end.

