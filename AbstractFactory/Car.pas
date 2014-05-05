unit Car;

interface

type
  TAbstractCar = class abstract(TObject)
  public
    function GetName: string; virtual; abstract;
  end;

  TRenaultCar = class(TAbstractCar)
  public
    function GetName: string; override;
  end;

  TVolvoCar = class(TAbstractCar)
  public
    function GetName: string; override;
  end;

  TMercedesCar = class(TAbstractCar)
  public
    function GetName: string; override;
  end;

implementation

{ TRenaultCar }

function TRenaultCar.GetName: string;
begin
  Result := 'Renault';
end;

{ TVolvoCar }

function TVolvoCar.GetName: string;
begin
  Result := 'Volvo';
end;

{ TMercedesCar }

function TMercedesCar.GetName: string;
begin
  Result := 'Mercedes-Benz';
end;

end.
