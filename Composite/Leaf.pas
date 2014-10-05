unit Leaf;

interface

uses
  System.Classes,
  Component;

type
  TLeaf = class(TComponent)
  private
    FResultList: TStrings;
  public
    constructor Create(AName: string);
    destructor Destroy; override;
    function Add(const AComponent: TComponent): string; override;
    function Remove(const AComponent: TComponent): string; override;
    function Display(ADepth: SmallInt): TStrings; override;
  end;

implementation

{ TLeaf }

constructor TLeaf.Create(AName: string);
begin
  inherited Create(AName);

  FResultList := TStringList.Create;
end;

destructor TLeaf.Destroy;
begin
  FResultList.Free;

  inherited;
end;

function TLeaf.Add(const AComponent: TComponent): string;
begin
  Result := 'Cannot add to leaf.';
end;

function TLeaf.Remove(const AComponent: TComponent): string;
begin
  Result := 'Cannot remove from leaf.'
end;

function TLeaf.Display(ADepth: SmallInt): TStrings;
begin
  FResultList.Add(StringOfChar('-', ADepth) + FName);

  Result := FResultList;
end;

end.

