program Tabulation;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}



begin
  Application.Initialize;
  Application.Title := 'Tabulation';
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
