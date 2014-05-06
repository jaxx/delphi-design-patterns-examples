unit OldCustomer;

interface

type
  TOldBirthDate = record
    Day: 0..31;
    Month: 1..12;
    Year: 1..12;
  end;

  TOldCustomer = class(TObject)
  private
    FCustomerID: Integer;
    FName: string;
    FBirthDate: TOldBirthDate;
  public
    constructor Create(aCustomerID: Integer);
    property CustomerID: Integer read FCustomerID;
    property Name: string read FName;
    property BirthDate: TOldBirthDate read FBirthDate;
  end;

implementation

{ TOldCustomer }

constructor TOldCustomer.Create(aCustomerID: Integer);
begin
  FCustomerID := aCustomerID;
  FName := 'An OldCustomer';

  with FBirthDate do
  begin
    Day := 1;
    Month := 1;
    Year := 1;
  end;
end;

end.
