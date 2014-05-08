unit Product;

interface

uses
  BuilderInterfaces,
  System.Classes;

type
  TProduct = class(TInterfacedObject, IProduct)
  private
    FParts: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(aPart: string);
    function Display: string;
  end;

implementation

uses
  System.SysUtils;

{ TProduct }

constructor TProduct.Create;
begin
  FParts := TStringList.Create;
end;

destructor TProduct.Destroy;
begin
  FParts.Free;

  inherited;
end;

function TProduct.Display: string;
var
  text: TStringBuilder;
  part: string;

begin
  text := TStringBuilder.Create;

  try
    text.Append('Making meal');
    text.Append(' --> ');

    for part in FParts do
    begin
      text.Append(part);
    end;

    Result := text.ToString;
  finally
    text.Free;
  end;
end;

procedure TProduct.Add(aPart: string);
begin
  FParts.Add(aPart);
end;

end.
