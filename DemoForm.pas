unit DemoForm;

interface

uses
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvPageListTreeView,
  JvPageList,
  JvExControls,
  Vcl.Buttons,
  JvSwitch,
  SwitchInterface,
  SwitchAbstraction,
  Handler;

type
  TfrmDemo = class(TForm)
    cbbFactorySelect: TComboBox;
    btnCreateCar: TButton;
    lstCarsCreated: TListBox;
    pltvMenu: TJvPageListTreeView;
    plPages: TJvPageList;
    lblAdapterInfo: TLabel;
    edtCustomerId: TEdit;
    lstCustomers: TListBox;
    btnAddCustomer: TSpeedButton;
    lstSwitchInfo: TListBox;
    swKitchen: TJvSwitch;
    swBathroom: TJvSwitch;
    lblKitchenSwitch: TLabel;
    lblBathroomSwitch: TLabel;
    btnMeal1: TButton;
    lstMeals: TListBox;
    btnMeal2: TButton;
    btnHandleRequests: TButton;
    lstHandlerOutput: TListBox;
    plspAbstractFactory: TJvStandardPage;
    plspAdapter: TJvStandardPage;
    plspBridge: TJvStandardPage;
    plspBuilder: TJvStandardPage;
    plspChainOfResponsibility: TJvStandardPage;
    plspCommand: TJvStandardPage;
    plspFactoryMethod: TJvStandardPage;
    plspObjectPool: TJvStandardPage;
    plspPrototype: TJvStandardPage;
    plspSingleton: TJvStandardPage;
    plspComposite: TJvStandardPage;
    plspDecorator: TJvStandardPage;
    plspFacade: TJvStandardPage;
    plspFlyweight: TJvStandardPage;
    plspPrivateClassData: TJvStandardPage;
    plspProxy: TJvStandardPage;
    plspInterpreter: TJvStandardPage;
    plspIterator: TJvStandardPage;
    plspMediator: TJvStandardPage;
    plspMemento: TJvStandardPage;
    plspNullObject: TJvStandardPage;
    plspObserver: TJvStandardPage;
    plspState: TJvStandardPage;
    plspStrategy: TJvStandardPage;
    plspTemplateMethod: TJvStandardPage;
    plspVisitor: TJvStandardPage;
    edtOrderName: TEdit;
    btnAddOrder: TButton;
    lstCookWorkLog: TListBox;
    mmoStructure: TMemo;
    btnCreateTreeStructure: TButton;
    procedure btnCreateCarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddCustomerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure swKitchenOn(Sender: TObject);
    procedure swKitchenOff(Sender: TObject);
    procedure swBathroomOn(Sender: TObject);
    procedure swBathroomOff(Sender: TObject);
    procedure btnMeal1Click(Sender: TObject);
    procedure btnMeal2Click(Sender: TObject);
    procedure btnHandleRequestsClick(Sender: TObject);
    procedure edtOrderNameChange(Sender: TObject);
    procedure btnAddOrderClick(Sender: TObject);
    procedure btnCreateTreeStructureClick(Sender: TObject);
  private
    FSwitchAbstraction: TSwitchAbstraction;
    FKitchenSwitch: ISwitch;
    FBathroomSwitch: ISwitch;
    FConcreteHandler1: THandler;
    FConcreteHandler2: THandler;
    FConcreteHandler3: THandler;
  end;

var
  frmDemo: TfrmDemo;

implementation

uses
  AbstractCarFactory,
  Car,
  AdaptedCustomer,
  NewCustomer,
  Switch,
  Director,
  Builder,
  BuilderInterfaces,
  Invoker,
  Command,
  Receiver,
  Composite,
  Leaf;

{$R *.dfm}

procedure TfrmDemo.FormCreate(Sender: TObject);
begin
  FSwitchAbstraction := TSwitchAbstraction.Create;

  FKitchenSwitch := TKitchenSwitch.Create;
  FBathroomSwitch := TBathroomSwitch.Create;

  FConcreteHandler1 := TConcreteHandler1.Create;
  FConcreteHandler2 := TConcreteHandler2.Create;
  FConcreteHandler3 := TConcreteHandler3.Create;
end;

procedure TfrmDemo.FormDestroy(Sender: TObject);
begin
  FSwitchAbstraction.Free;

  FConcreteHandler3.Free;
  FConcreteHandler2.Free;
  FConcreteHandler1.Free;
end;

{ Builder }

procedure TfrmDemo.btnMeal1Click(Sender: TObject);
var
  director: TDirector;
  mealBuilder1: IBuilder;
  product: IProduct;

begin
  director := TDirector.Create;

  try
    mealBuilder1 := TMealBuilder1.Create;
    director.Construct(mealBuilder1);
    product := mealBuilder1.GetResult;

    lstMeals.Items.Add(product.Display)
  finally
    director.Free;
  end;
end;

procedure TfrmDemo.btnMeal2Click(Sender: TObject);
var
  director: TDirector;
  mealBuilder2: IBuilder;
  product: IProduct;

begin
  director := TDirector.Create;

  try
    mealBuilder2 := TMealBuilder2.Create;
    director.Construct(mealBuilder2);
    product := mealBuilder2.GetResult;

    lstMeals.Items.Add(product.Display)
  finally
    director.Free;
  end;
end;

{ Adapter }

procedure TfrmDemo.btnAddCustomerClick(Sender: TObject);
var
  customerID: Integer;
  customer: TNewCustomer;

begin
  if string(edtCustomerId.Text).IsEmpty then
    Exit;

  customerID := StrToInt(edtCustomerId.Text);

  customer := TAdaptedCustomer.GetCustomer(customerID);
  try
    try
      lstCustomers.Items.Add(customer.ToString);
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  finally
    customer.Free;
  end;

  edtCustomerId.Clear;
end;

{ AbstractFactory }

procedure TfrmDemo.btnCreateCarClick(Sender: TObject);
var
  carFactory: TAbstractCarFactory;
  car: TAbstractCar;

begin
  if cbbFactorySelect.ItemIndex < 0 then
    Exit;

  try
    with cbbFactorySelect do
    begin
      case ItemIndex of
        0: carFactory := TRenaultFactory.Create;
        1: carFactory := TVolvoFactory.Create;
        2: carFactory := TMercedesFactory.Create;
      end;
    end;

    car := carFactory.GetCar;
    lstCarsCreated.Items.Add(car.GetName);
  finally
    car.Free;
    carFactory.Free;
  end;
end;

{ Bridge }

procedure TfrmDemo.swBathroomOff(Sender: TObject);
begin
  FSwitchAbstraction.Switch := FBathroomSwitch;
  lstSwitchInfo.Items.Add(FSwitchAbstraction.TurnOff);
end;

procedure TfrmDemo.swBathroomOn(Sender: TObject);
begin
  FSwitchAbstraction.Switch := FBathroomSwitch;
  lstSwitchInfo.Items.Add(FSwitchAbstraction.TurnOn);
end;

procedure TfrmDemo.swKitchenOff(Sender: TObject);
begin
  FSwitchAbstraction.Switch := FKitchenSwitch;
  lstSwitchInfo.Items.Add(FSwitchAbstraction.TurnOff);
end;

procedure TfrmDemo.swKitchenOn(Sender: TObject);
begin
  FSwitchAbstraction.Switch := FKitchenSwitch;
  lstSwitchInfo.Items.Add(FSwitchAbstraction.TurnOn);
end;

{ Chain Of Responsibility }

procedure TfrmDemo.btnHandleRequestsClick(Sender: TObject);
var
  requests: TArray<SmallInt>;
  request: SmallInt;

begin
  requests := TArray<SmallInt>.Create(2, 5, 14, 22, 18, 3, 27, 20);

  FConcreteHandler1.Successor := FConcreteHandler2;
  FConcreteHandler2.Successor := FConcreteHandler3;

  for request in requests do
    lstHandlerOutput.Items.Add(FConcreteHandler1.HandleRequest(request));
end;

{ Command }

procedure TfrmDemo.edtOrderNameChange(Sender: TObject);
begin
  btnAddOrder.Enabled := Length(edtOrderName.Text) > 3;
end;

procedure TfrmDemo.btnAddOrderClick(Sender: TObject);
var
  receiver: TReceiver;
  command: TCommand;
  invoker: TInvoker;

begin
  receiver := TReceiver.Create(edtOrderName.Text);
  command := TConcreteCommand.Create(receiver);
  invoker := TInvoker.Create;

  try
    invoker.SetCommand(command);

    lstCookWorkLog.Items.Add(invoker.ExecuteCommand);
  finally
    invoker.Free;
    command.Free;
    receiver.Free;
  end;

  edtOrderName.SetFocus;
  edtOrderName.Clear;
end;

{ Composite }

procedure TfrmDemo.btnCreateTreeStructureClick(Sender: TObject);
var
  root: TComposite;
  compositeX: TComposite;
  leaf: TLeaf;

begin
  mmoStructure.Clear;

  root := TComposite.Create('root');
  compositeX := TComposite.Create('Composite X');

  try
    root.Add(TLeaf.Create('Leaf A'));
    root.Add(TLeaf.Create('Leaf B'));

    compositeX.Add(TLeaf.Create('Leaf XA'));
    compositeX.Add(TLeaf.Create('Leaf XB'));

    root.Add(compositeX);
    root.Add(TLeaf.Create('Leaf C'));

    leaf := TLeaf.Create('Leaf D');

    root.Add(leaf);
    root.Remove(leaf);

    mmoStructure.Lines.AddStrings(root.Display(1));
  finally
    root.Free;
  end;
end;

end.
