unit Invoker;

interface

uses
  Command;

type
  TInvoker = class(TObject)
  private
    FCommand: TCommand;
  public
    procedure SetCommand(ACommand: TCommand);
    function ExecuteCommand: string;
  end;

implementation

{ TInvoker }

function TInvoker.ExecuteCommand: string;
begin
  Result := FCommand.Execute;
end;

procedure TInvoker.SetCommand(ACommand: TCommand);
begin
  FCommand := ACommand;
end;

end.

