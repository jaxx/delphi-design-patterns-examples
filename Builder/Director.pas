unit Director;

interface

uses
  BuilderInterfaces;

type
  TDirector = class(TObject)
  public
    procedure Construct(aBuilder: IBuilder);
  end;

implementation

{ TDirector }

procedure TDirector.Construct(aBuilder: IBuilder);
begin
  aBuilder.BuildPartA;
  aBuilder.BuildPartB;
end;

end.
