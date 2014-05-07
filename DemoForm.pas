unit DemoForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
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
  SwitchAbstraction;

type
  TfrmDemo = class(TForm)
    cbbFactorySelect: TComboBox;
    btnCreateCar: TButton;
    lstCarsCreated: TListBox;
    pltvMenu: TJvPageListTreeView;
    plPages: TJvPageList;
    plspAbstractFactory: TJvStandardPage;
    plspAdapter: TJvStandardPage;
    lblAdapterInfo: TLabel;
    edtCustomerId: TEdit;
    lstCustomers: TListBox;
    btnAddCustomer: TSpeedButton;
    plspBridge: TJvStandardPage;
    lstSwitchInfo: TListBox;
    swKitchen: TJvSwitch;
    swBathroom: TJvSwitch;
    lblKitchenSwitch: TLabel;
    lblBathroomSwitch: TLabel;
    procedure btnCreateCarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddCustomerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure swKitchenOn(Sender: TObject);
    procedure swKitchenOff(Sender: TObject);
    procedure swBathroomOn(Sender: TObject);
    procedure swBathroomOff(Sender: TObject);
  private
    FSwitchAbstraction: TSwitchAbstraction;
    FKitchenSwitch: ISwitch;
    FBathroomSwitch: ISwitch;
  end;

var
  frmDemo: TfrmDemo;

implementation

uses
  AbstractCarFactory,
  Car,
  AdaptedCustomer,
  NewCustomer,
  Switch;

{$R *.dfm}

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

procedure TfrmDemo.FormCreate(Sender: TObject);
begin
  pltvMenu.FullExpand;
  pltvMenu.Select(pltvMenu.Items[1]);

  FSwitchAbstraction := TSwitchAbstraction.Create;
  FKitchenSwitch := TKitchenSwitch.Create;
  FBathroomSwitch := TBathroomSwitch.Create;
end;

procedure TfrmDemo.FormDestroy(Sender: TObject);
begin
  FSwitchAbstraction.Free;
end;

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

end.
