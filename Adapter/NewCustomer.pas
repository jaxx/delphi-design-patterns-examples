unit NewCustomer;

interface

type
  TNewCustomer = class(TObject)
  private
    FCustomerID: Integer;
    FFirstName: string;
    FLastName: string;
    FBirthDate: TDateTime;
  protected
    function GetCustomerID: Integer; virtual;
    function GetFirstName: string; virtual;
    function GetLastName: string; virtual;
    function GetBirthDate: TDateTime; virtual;
  public
    constructor Create(aCustomerID: Integer); virtual;
    function ToString: string; override;
    property CustomerID: Integer read GetCustomerID;
    property FirstName: string read GetFirstName;
    property LastName: string read GetLastName;
    property BirthDate: TDateTime read GetBirthDate;
  end;

implementation

uses
  System.SysUtils;

{ TNewCustomer }

constructor TNewCustomer.Create(aCustomerID: Integer);
begin
  FCustomerID := aCustomerID;
  FFirstName := 'A';
  FLastName := 'NewCustomer';
  FBirthDate := Now;
end;

function TNewCustomer.GetBirthDate: TDateTime;
begin
  Result := FBirthDate;
end;

function TNewCustomer.GetCustomerID: Integer;
begin
  Result := FCustomerID;
end;

function TNewCustomer.GetFirstName: string;
begin
  Result := FFirstName;
end;

function TNewCustomer.GetLastName: string;
begin
  Result := FLastName;
end;

function TNewCustomer.ToString: string;
begin
  Result := Format('Class: %s, FirstName: %s, LastName: %s, Birthday: %s', [ClassType.ClassName, GetFirstName, GetLastName, DateToStr(GetBirthDate)]);
end;

end.
