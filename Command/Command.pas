unit Command;

interface

uses
  Receiver;

type
  TCommand = class abstract(TObject)
  protected
    FReceiver: TReceiver;
  public
    constructor Create(AReceiver: TReceiver);
    function Execute: string; virtual; abstract;
  end;

  TConcreteCommand = class(TCommand)
  public
    constructor Create(AReceiver: TReceiver);
    function Execute: string; override;
  end;

implementation

{ TCommand }

constructor TCommand.Create(AReceiver: TReceiver);
begin
  FReceiver := AReceiver;
end;

{ TConcreteCommand }

constructor TConcreteCommand.Create(AReceiver: TReceiver);
begin
  inherited Create(AReceiver);
end;

function TConcreteCommand.Execute: string;
begin
  Result := FReceiver.Action;
end;

end.
