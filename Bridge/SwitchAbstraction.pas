unit SwitchAbstraction;

interface

uses
  SwitchInterface,
  Switch;

type
  TSwitchAbstraction = class(TObject)
  protected
    FSwitch: ISwitch;
  public
    function TurnOn: string; virtual;
    function TurnOff: string; virtual;
    property Switch: ISwitch write FSwitch;
  end;

implementation

{ TSwitchAbstraction }

function TSwitchAbstraction.TurnOff: string;
begin
  Result := FSwitch.TurnOff;
end;

function TSwitchAbstraction.TurnOn: string;
begin
  Result := FSwitch.TurnOn;
end;

end.
