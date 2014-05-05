unit AbstractCarFactory;

interface

uses
  Car;

type
  TAbstractCarFactory = class abstract(TObject)
  public
    function GetCar: TAbstractCar; virtual; abstract;
  end;

  TRenaultFactory = class(TAbstractCarFactory)
  public
    function GetCar: TAbstractCar; override;
  end;

  TVolvoFactory = class(TAbstractCarFactory)
  public
    function GetCar: TAbstractCar; override;
  end;

  TMercedesFactory = class(TAbstractCarFactory)
  public
    function GetCar: TAbstractCar; override;
  end;

implementation

{ TRenaultFactory }

function TRenaultFactory.GetCar: TAbstractCar;
begin
  Result := TRenaultCar.Create;
end;

{ TVolvoFactory }

function TVolvoFactory.GetCar: TAbstractCar;
begin
  Result := TVolvoCar.Create;
end;

{ TMercedesFactory }

function TMercedesFactory.GetCar: TAbstractCar;
begin
  Result := TMercedesCar.Create;
end;

end.
