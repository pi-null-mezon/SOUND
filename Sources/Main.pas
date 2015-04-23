unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Logo, TeEngine, TeeFunci, Series, ExtCtrls, TeeProcs, Chart,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, Menus, ComCtrls, StdCtrls, Matrix,
  Multy, FRootmachine, FEditor, FDraw, FFreqDialog, FHelp, FFriction, FNumerical, jpeg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FirstsSep: TMenuItem;
    Edition: TMenuItem;
    Root: TMenuItem;
    Grafiks: TMenuItem;
    Conductor: TMenuItem;
    Erase: TMenuItem;
    Help: TMenuItem;
    Grafiks1: TMenuItem;
    Grafiks2: TMenuItem;
    Image1: TImage;
    N4: TMenuItem;
    Friction: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure RootClick(Sender: TObject);
    procedure EditionClick(Sender: TObject);
    procedure Grafiks1Click(Sender: TObject);
    procedure ConductorClick(Sender: TObject);
    procedure EraseClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure Grafiks2Click(Sender: TObject);
    procedure FrictionClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
Logo.Form2.ShowModal();
end;

procedure TForm1.RootClick(Sender: TObject);
begin
  if Length(Element)=0 then
  begin
   Showmessage('Параметры рассчитываемого звена ещё не заданы!');
   Exit; {Команда выхода из текущей процедуры}
  End;
FRootmachine.Form3.Show;
end;

procedure TForm1.EditionClick(Sender: TObject);
begin
FEditor.Form6.Show;
end;

procedure TForm1.Grafiks1Click(Sender: TObject);
Var i:integer;
begin

 if Length(Element)=0 then
  begin
   Showmessage('Параметры рассчитываемого звена ещё не заданы!');
   Exit; {Команда выхода из текущей процедуры}
  end else
 for i:=0 to high(Element) do
  if Element[i].L<0 then
   begin
   Showmessage('Резонансная длинна ещё не рассчитана!');
   Exit; {Команда выхода из текущей процедуры}
  end;

 FDraw.Form9.Show;
end;

procedure TForm1.ConductorClick(Sender: TObject);
Var k,i,temp:integer;
begin
 if Length(Element)=0 then
  begin
   Showmessage('Текущий полуволновой элемент ещё не расчитан!');
   Exit; {Команда выхода из текущей процедуры}
  end else
 for i:=0 to high(Element) do
  if Element[i].L<0 then
   begin
   Showmessage('Текущий полуволновой элемент ещё не расчитан!');
   Exit; {Команда выхода из текущей процедуры}
  end;

if Element[0].freq=0 then FFreqDialog.Form8.ShowModal;

temp:=length(WC);

  Setlength(WC,temp+length(Element));
  for k:=temp to temp+high(Element) do
  begin
  {WC[k]:=Element[k-temp];}
  WC[k]:=Zveno.Create;
  WC[k].L:=Element[k-temp].L;
  WC[k].D1:=Element[k-temp].D1;
  WC[k].D2:=Element[k-temp].D2;
  WC[k].c:=Element[k-temp].c;
  WC[k].density:=Element[k-temp].density;
  WC[k].psi:=Element[k-temp].psi;
  WC[k].h33:=Element[k-temp].h33;
  WC[k].tgdelta:=Element[k-temp].tgdelta;
  WC[k].eps:=Element[k-temp].eps;
  WC[k].shape:=Element[k-temp].shape;
  WC[k].draw:=Element[k-temp].draw;
  WC[k].freq:=Element[k-temp].freq;
  WC[k].Mas:=Element[k-temp].Mas;
  WC[k].stiff:=Element[k-temp].stiff;
  end;

Showmessage('Сохранение прошло успешно!');

end;

procedure TForm1.EraseClick(Sender: TObject);
begin
WC:=nil;
Showmessage('Стек очищен!');
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
FHelp.Form10.Show;
end;

procedure TForm1.Grafiks2Click(Sender: TObject);
Var i:integer;
begin
if Length(Element)=0 then
  begin
   Showmessage('Параметры рассчитываемого звена ещё не заданы!');
   Exit; {Команда выхода из текущей процедуры}
  end else
 for i:=0 to high(Element) do
  if Element[i].L<0 then
   begin
   Showmessage('Резонансная длинна ещё не рассчитана!');
   Exit; {Команда выхода из текущей процедуры}
  end;
if Element[0].freq=0 then FFreqDialog.Form8.ShowModal;
 FNumerical.Form14.Show;
end;

procedure TForm1.FrictionClick(Sender: TObject);
Var i:integer;
begin
if Length(Element)=0 then
  begin
   Showmessage('Параметры рассчитываемого звена ещё не заданы!');
   Exit; {Команда выхода из текущей процедуры}
  end else
 for i:=0 to high(Element) do
  if Element[i].L<0 then
   begin
   Showmessage('Резонансная длинна ещё не рассчитана!');
   Exit; {Команда выхода из текущей процедуры}
  end;
if Element[0].freq=0 then FFreqDialog.Form8.ShowModal;
FFriction.Form11.Show;
end;

end.
