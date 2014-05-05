program despat;

uses
  Vcl.Forms,
  DemoForm in 'DemoForm.pas' {frmDemo},
  AbstractCarFactory in 'AbstractFactory\AbstractCarFactory.pas',
  Car in 'AbstractFactory\Car.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.Run;
end.
