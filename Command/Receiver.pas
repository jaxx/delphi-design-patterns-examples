unit Receiver;

interface

type
  TReceiver = class(TObject)
  private
    FCommandText: string;
  public
    constructor Create(ACommandText: string);
    function Action: string;
  end;

implementation

uses
  System.SysUtils;

{ TReceiver }

constructor TReceiver.Create(ACommandText: string);
begin
  FCommandText := ACommandText;
end;

function TReceiver.Action: string;
begin
  Result := Format('Receiver received command: %s', [FCommandText]);
end;

end.

