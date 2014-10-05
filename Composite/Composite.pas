unit Composite;

interface

uses
  System.Generics.Collections,
  System.Classes,
  Component;

type
  TComposite = class(TComponent)
  private
    FChildren: TObjectList<TComponent>;
    FResultList: TStrings;
  public
    constructor Create(AName: string);
    destructor Destroy; override;
    function Add(const AComponent: TComponent): string; override;
    function Remove(const AComponent: TComponent): string; override;
    function Display(ADepth: SmallInt): TStrings; override;
  end;

implementation

{ TComposite }

constructor TComposite.Create(AName: string);
begin
  inherited Create(AName);

  FChildren := TObjectList<TComponent>.Create(True);
  FResultList := TStringList.Create;
end;

destructor TComposite.Destroy;
begin
  FChildren.Free;
  FResultList.Free;

  inherited;
end;

function TComposite.Display(ADepth: SmallInt): TStrings;
var
  component: TComponent;

begin
  FResultList.Add(StringOfChar('-', ADepth) + FName);

  for component in FChildren do
    FResultList.AddStrings(component.Display(ADepth + 2));

  Result := FResultList;
end;

function TComposite.Add(const AComponent: TComponent): string;
begin
  FChildren.Add(AComponent);
end;

function TComposite.Remove(const AComponent: TComponent): string;
begin
  FChildren.Remove(AComponent);
end;

end.
