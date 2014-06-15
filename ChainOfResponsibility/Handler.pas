unit Handler;

interface

type
  THandler = class abstract(TObject)
  protected
    FSuccessor: THandler;
    procedure SetSuccessor(const ASuccessor: THandler);
  public
    function HandleRequest(ARequest: SmallInt): string; virtual; abstract;
    property Successor: THandler write SetSuccessor;
  end;

  TConcreteHandler1 = class(THandler)
  public
    function HandleRequest(ARequest: SmallInt): string; override;
  end;

  TConcreteHandler2 = class(THandler)
  public
    function HandleRequest(ARequest: SmallInt): string; override;
  end;

  TConcreteHandler3 = class(THandler)
  public
    function HandleRequest(ARequest: SmallInt): string; override;
  end;

implementation

uses
  System.SysUtils;

{ THandler }

procedure THandler.SetSuccessor(const ASuccessor: THandler);
begin
  FSuccessor := ASuccessor;
end;

{ TConcreteHandler1 }

function TConcreteHandler1.HandleRequest(ARequest: SmallInt): string;
begin
  if (ARequest >= 0) and (ARequest < 10) then
    Result := Format('%s handled request %d', [ClassType.ClassName, ARequest])
  else if FSuccessor <> nil then
    Result := FSuccessor.HandleRequest(ARequest);
end;

{ TConcreteHandler2 }

function TConcreteHandler2.HandleRequest(ARequest: SmallInt): string;
begin
  if (ARequest >= 10) and (ARequest < 20) then
    Result := Format('%s handled request %d', [ClassType.ClassName, ARequest])
  else if FSuccessor <> nil then
    Result := FSuccessor.HandleRequest(ARequest);
end;

{ TConcreteHandler3 }

function TConcreteHandler3.HandleRequest(ARequest: SmallInt): string;
begin
  if (ARequest >= 20) and (ARequest < 30) then
    Result := Format('%s handled request %d', [ClassType.ClassName, ARequest])
  else if FSuccessor <> nil then
    Result := FSuccessor.HandleRequest(ARequest);
end;

end.
