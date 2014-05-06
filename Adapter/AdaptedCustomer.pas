unit AdaptedCustomer;

interface

uses
  NewCustomer,
  OldCustomer;

type
  TAdaptedCustomer = class(TNewCustomer)
  private
    FOldCustomer: TOldCustomer;
  protected
    function GetCustomerID: Integer; override;
    function GetFirstName: string; override;
    function GetLastName: string; override;
    function GetBirthDate: TDateTime; override;
  public
    constructor Create(aCustomerID: Integer); override;
    destructor Destroy; override;
    class function GetCustomer(aCustomerID: Integer): TNewCustomer;
  end;

implementation

uses
  System.SysUtils;

const
  LAST_OLDCUSTOMER_AT_YEAR_2000 = 15722;
  LAST_OLDCUSTOMER_IN_DATABASE = 30000;

{ TAdaptedCustomer }

constructor TAdaptedCustomer.Create(aCustomerID: Integer);
begin
  inherited Create(aCustomerID);

  FOldCustomer := TOldCustomer.Create(aCustomerID);
end;

destructor TAdaptedCustomer.Destroy;
begin
  FOldCustomer.Free;

  inherited Destroy;
end;

function TAdaptedCustomer.GetBirthDate: TDateTime;
var
  FullYear: Word;

begin
  if FOldCustomer.CustomerID > LAST_OLDCUSTOMER_AT_YEAR_2000  then
    FullYear := 2000 + FOldCustomer.BirthDate.Year
  else
    FullYear := 1900 + FOldCustomer.BirthDate.Year;

  Result := EncodeDate(FullYear, FOldCustomer.BirthDate.Month, FOldCustomer.BirthDate.Day);
end;

class function TAdaptedCustomer.GetCustomer(aCustomerID: Integer): TNewCustomer;
begin
  if aCustomerID > LAST_OLDCUSTOMER_IN_DATABASE then
    Result := TNewCustomer.Create(aCustomerID)
  else
    Result := TAdaptedCustomer.Create(aCustomerID);
end;

function TAdaptedCustomer.GetCustomerID: Integer;
begin
  Result := FOldCustomer.CustomerID;
end;

function TAdaptedCustomer.GetFirstName: string;
var
  splitPos: Integer;

begin
  splitPos := Pos(' ', FOldCustomer.Name);

  if splitPos = 0 then
    Result := ''
  else
    Result := Copy(FOldCustomer.Name, 1, splitPos - 1);
end;

function TAdaptedCustomer.GetLastName: string;
var
  splitPos: Integer;

begin
  splitPos := Pos(' ', FOldCustomer.Name);

  if splitPos = 0 then
    Result := FOldCustomer.Name
  else
    Result := Copy(FOldCustomer.Name, splitPos + 1, Length(FOldCustomer.Name));
end;

end.
