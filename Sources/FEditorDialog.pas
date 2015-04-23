unit FEditorDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Matrix, FMasStif, FPiezo;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label4: TLabel;
    D1: TEdit;
    D2: TEdit;
    Label5: TLabel;
    density: TEdit;
    Label6: TLabel;
    soundvelocity: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Length: TEdit;
    Button2: TButton;
    GlobPointLabel: TLabel;
    Label9: TLabel;
    psi0: TEdit;
    GroupBox1: TGroupBox;
    Material: TComboBox;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure D1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Main;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
GlobPointLabel.Caption:=IntToStr(GlobalPointer+1);
Combobox1.ItemIndex:=-1;
Combobox1.Text:='¬ыберите форму (тип) звена';
Material.ItemIndex:=-1;
Material.Text:='¬ыберите материал из библиотеки';
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
 while (Combobox1.itemindex=-1) do begin
  Showmessage('Ќе выбрана форма (тип) звена!');
  Exit;
 End;

 if ((Combobox1.itemindex=1) or (Combobox1.ItemIndex=2)) and (D1.Text=D2.Text) then
 begin
 Showmessage('ƒл€ выбранного типа звена введены недопустимые параметры!');
 Exit;
 End;

Element[GlobalPointer].psi:=StrToFloat(psi0.Text)/100;
Element[GlobalPointer].D1:=StrToFloat(D1.Text)/1000;
Element[GlobalPointer].D2:=StrToFloat(D2.Text)/1000;
Element[GlobalPointer].density:=StrToFloat(density.Text);
Element[GlobalPointer].c:=StrToFloat(soundvelocity.Text);
 if Length.Text='root' then
 Element[GlobalPointer].L:=-1 {отрицательна€ величина служит указателем дл€ процедуры вычислени€ резонансной длинны}
 else
 Element[GlobalPointer].L:=StrToFloat(Length.Text)/1000;

 if (Element[GlobalPointer].shape=cilinder) or (Element[GlobalPointer].shape=piezo) then
 Element[GlobalPointer].D2:=Element[GlobalPointer].D1;

 if Combobox1.ItemIndex = 3 then
 FMasStif.Form12.ShowModal;

 if Combobox1.ItemIndex = 4 then
 FPiezo.Form13.ShowModal;

Close();
end;

procedure TForm7.ComboBox1Change(Sender: TObject);
begin
case Combobox1.ItemIndex of
 0: Element[GlobalPointer].shape:=cilinder;
 1: begin
    Element[GlobalPointer].shape:=cone;
    D2.ReadOnly:=false;
    end;
 2: begin
    Element[GlobalPointer].shape:=exponent;
    D2.ReadOnly:=false;
    end;
 3: Element[GlobalPointer].shape:=masstif;
 4: Element[GlobalPointer].shape:=piezo;
end;
End;

procedure TForm7.Button2Click(Sender: TObject);
begin
Length.Text:='root';
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Case Material.ItemIndex of
-1: begin
     Showmessage('Ќе выбран материал!');
     Exit
    end;
0: begin
    soundvelocity.Text:='5055';
    density.Text :='4500';
    psi0.Text:='0,1';
   end;
1: begin
    soundvelocity.Text:='4885';
    density.Text :='4400';
    psi0.Text:='0,08';
   end;
2: begin
   if Combobox1.itemindex <> 4 then
   begin
   Showmessage('Ётот материал применим только к электроакустическим преобразовател€м!');
   Exit;
   end;
    soundvelocity.Text:='2950';
    density.Text :='7740';
    psi0.Text:='12,56';
    FPiezo.Form13.eps.Text:='1600';
    FPiezo.Form13.h33.Text:='2,01';
    FPiezo.Form13.tgd.Text:='2';
   end;
end;
end;

procedure TForm7.D1Change(Sender: TObject);
begin
if (Element[GlobalPointer].shape=cilinder) or (Element[GlobalPointer].shape=piezo) then
D2.Text:=D1.Text;
end;

end.
