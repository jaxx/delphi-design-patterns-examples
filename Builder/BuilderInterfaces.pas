unit BuilderInterfaces;

interface

type
  IProduct = interface
  ['{2D82CB6E-2858-4B71-B05D-47EE45AD6869}']
    procedure Add(aPart: string);
    function Display: string;
  end;

  IBuilder = interface
  ['{C9321907-129C-41D8-9421-4176A258CC2E}']
    function BuildPartA: string;
    function BuildPartB: string;
    function GetResult: IProduct;
  end;

implementation

end.
