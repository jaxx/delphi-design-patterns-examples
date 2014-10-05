unit Component;

interface

uses
  System.Classes;

type
  TComponent = class abstract(TObject)
  protected
    FName: string;
  public
    constructor Create(AName: string);
    function Add(const AComponent: TComponent): string; virtual; abstract;
    function Remove(const AComponent: TCOmponent): string; virtual; abstract;
    function Display(ADepth: SmallInt): TStrings; virtual; abstract;
  end;

implementation

{ TComponent }

constructor TComponent.Create(AName: string);
begin
  FName := AName;
end;

end.

