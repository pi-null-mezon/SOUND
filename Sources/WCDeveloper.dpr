program WCDeveloper;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  FRootmachine in 'FRootmachine.pas' {Form3},
  Logo in 'Logo.pas' {Form2},
  FGraph in 'FGraph.pas' {Form4},
  FFED in 'FFED.pas' {Form5},
  FEditor in 'FEditor.pas' {Form6},
  FEditorDialog in 'FEditorDialog.pas' {Form7},
  FFreqDialog in 'FFreqDialog.pas' {Form8},
  FDraw in 'FDraw.pas' {Form9},
  FHelp in 'FHelp.pas' {Form10},
  FFriction in 'FFriction.pas' {Form11},
  FFrictionDialog in 'FFrictionDialog.pas' {Dialog},
  FMasStif in 'FMasStif.pas' {Form12},
  FPiezo in 'FPiezo.pas' {Form13},
  FNumerical in 'FNumerical.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TDialog, Dialog);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
