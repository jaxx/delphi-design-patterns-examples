unit SwitchInterface;

interface

type
  ISwitch = interface
  ['{A8CBEED0-A5B5-4CC9-95A1-C203826CBCCD}']
    function TurnOn: string;
    function TurnOff: string;
  end;

implementation

end.
