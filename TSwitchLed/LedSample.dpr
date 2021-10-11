program LedSample;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  SwitchLed in 'SwitchLed.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Exemple TSwitchLed';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
