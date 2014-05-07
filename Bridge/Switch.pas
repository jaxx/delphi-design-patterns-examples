unit Switch;

interface

uses
  SwitchInterface;

type
  TSwitch = class abstract(TInterfacedObject, ISwitch)
  public
    function TurnOn: string; virtual; abstract;
    function TurnOff: string; virtual; abstract;
  end;

  TKitchenSwitch = class(TSwitch)
  public
    function TurnOn: string; override;
    function TurnOff: string; override;
  end;

  TBathroomSwitch = class(TSwitch)
  public
    function TurnOn: string; override;
    function TurnOff: string; override;
  end;

implementation

{ TKitchenSwitch }

function TKitchenSwitch.TurnOff: string;
begin
  Result := 'Kitchen switch turned off...';
end;

function TKitchenSwitch.TurnOn: string;
begin
  Result := 'Kitchen switch turned on...';
end;

{ TBathroomSwitch }

function TBathroomSwitch.TurnOff: string;
begin
  Result := 'Bathroom switch turned off...';
end;

function TBathroomSwitch.TurnOn: string;
begin
  Result := 'Bathroom switch turned on...';
end;

end.
