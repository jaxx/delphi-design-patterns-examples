program despat;

uses
  Vcl.Forms,
  DemoForm in 'DemoForm.pas' {frmDemo},
  AbstractCarFactory in 'AbstractFactory\AbstractCarFactory.pas',
  Car in 'AbstractFactory\Car.pas',
  NewCustomer in 'Adapter\NewCustomer.pas',
  OldCustomer in 'Adapter\OldCustomer.pas',
  AdaptedCustomer in 'Adapter\AdaptedCustomer.pas',
  SwitchAbstraction in 'Bridge\SwitchAbstraction.pas',
  Switch in 'Bridge\Switch.pas',
  SwitchInterface in 'Bridge\SwitchInterface.pas',
  Builder in 'Builder\Builder.pas',
  Product in 'Builder\Product.pas',
  BuilderInterfaces in 'Builder\BuilderInterfaces.pas',
  Director in 'Builder\Director.pas',
  Handler in 'ChainOfResponsibility\Handler.pas',
  Command in 'Command\Command.pas',
  Receiver in 'Command\Receiver.pas',
  Invoker in 'Command\Invoker.pas',
  Component in 'Composite\Component.pas',
  Composite in 'Composite\Composite.pas',
  Leaf in 'Composite\Leaf.pas';

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
