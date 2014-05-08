unit Builder;

interface

uses
  BuilderInterfaces;

type
  TMealBuilder1 = class(TInterfacedObject, IBuilder)
  private
    FProduct: IProduct;
  public
    constructor Create;
    function BuildPartA: string;
    function BuildPartB: string;
    function GetResult: IProduct;
  end;

  TMealBuilder2 = class(TInterfacedObject, IBuilder)
  private
    FProduct: IProduct;
  public
    constructor Create;
    function BuildPartA: string;
    function BuildPartB: string;
    function GetResult: IProduct;
  end;

implementation

uses
  Product;

{ TMealBuilder1 }

function TMealBuilder1.BuildPartA: string;
begin
  FProduct.Add('making burger...');
end;

function TMealBuilder1.BuildPartB: string;
begin
  FProduct.Add('making drink...');
end;

constructor TMealBuilder1.Create;
begin
  FProduct := TProduct.Create;
end;

function TMealBuilder1.GetResult: IProduct;
begin
  Result := FProduct;
end;

{ TMealBuilder2 }

function TMealBuilder2.BuildPartA: string;
begin
  FProduct.Add('making donut...');
end;

function TMealBuilder2.BuildPartB: string;
begin
  FProduct.Add('making toy');
end;

constructor TMealBuilder2.Create;
begin
  FProduct := TProduct.Create;
end;

function TMealBuilder2.GetResult: IProduct;
begin
  Result := FProduct;
end;

end.
