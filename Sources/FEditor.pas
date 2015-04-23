unit FEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Multy, Matrix, FEditorDialog;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  {Element:array of Zveno;}
implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
Var k:integer;
begin
 Element:=nil;
 Setlength(Element,StrToInt(Edit1.Text));
 for k:=0 to high(Element) do
 Element[k]:=Zveno.Create;

 for k:=0 to high(Element) do
 begin
  GlobalPointer:=k;
  FEditorDialog.Form7.ShowModal;
 End;

close();
end;

end.
