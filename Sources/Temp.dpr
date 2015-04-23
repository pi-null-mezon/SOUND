program Temp{программа для тестирования процедур и функций};

{$APPTYPE CONSOLE}

uses
  SysUtils, Multy, Matrix;

Type

Yhoo = class
equation: boolean;
end;
 {---------------}
Zveno = object
L,D:real;
procedure war;
function show(x:real):real;
end;

procedure zveno.war;
Begin
writeln('Write length:');
readln(L);
End;

function zveno.show(x:real):real;
Begin
if L<>0 then x:=L;
show:=x;
End;

 {---------------}
function func(x:real):real;
Begin
func:=x;
End;

function Super(A: array of value_box):value_box;
var i,j,k:integer;
M,Temp:value_box;
 Begin
  M:=A[0];
  for k:= 1 to high(A) do begin
  Temp:=M;
  for i:=1 to 2 do
  for j:=1 to 2 do
  M[i,j]:=A[k][i,1]*Temp[1,j]+A[k][i,2]*Temp[2,j];
  end;
  Super:=M;
End;


Var a,b:value_box;i,j,k:integer;
    d:array of value_box;
    new:array of value_box;
    first:zveno;
    c:real;
    WWW:Yhoo;
begin
   Setlength(d,3);
   for k:=0 to high(d) do
   for i:=1 to 2 do
   for j:=1 to 2 do
   d[k][i,j]:=1*(k-i+j);

  writeln('matrix A');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',d[0][i,j]:2:1,' ');
   writeln;
   end;
   writeln;

  writeln('matrix B');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',d[1][i,j]:2:1,' ');
   writeln;
   end;
    writeln;

    writeln('matrix C');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',d[2][i,j]:2:1,' ');
   writeln;
   end;
    writeln;

  Setlength(new,high(d));
  for k:=0 to high(d) do begin
  new[k]:=d[k]
  end;

  for k:=0 to high(d) do
   for i:=1 to 2 do
   for j:=1 to 2 do
   d[k][i,j]:=1;

   {Setlength(new,);
  for k:=high(new) to high(d)+high(new) do begin
  new[k]:=d[k]
  end;      }

  { writeln('matrix C*B*A');

   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',MM(d[2],MM(d[1],d[0]))[i,j]:2:1,' ');
   writeln;
   end;
   writeln;


     writeln('result');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',Super(d)[i,j]:2:1,' ');
   writeln;
   end;}


   writeln('matrix newA');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',new[0][i,j]:2:1,' ');
   writeln;
   end;
   writeln;

  writeln('matrix newB');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',new[1][i,j]:2:1,' ');
   writeln;
   end;
    writeln;

    writeln('matrix newC');
   for i:=1 to 2 do
   begin
   for j:=1 to 2 do
   write (' ',new[2][i,j]:2:1,' ');
   writeln;
   end;
    writeln;


   {first.war;
   c:=12.8;
   writeln(First.show(c):1:3);
   writeln(c:1:3);}

   WWW:=Yhoo.Create;
   {WWW.equation := true; }
   if WWW.equation = false then
   writeln('eqv=false')
   else
   writeln('eqv=true');
   writeln;
  { TODO -oUser -cConsole Main : Insert code here }
  readln;
end.
 