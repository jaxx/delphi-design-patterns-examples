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
  JvExControls, Vcl.Buttons;

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
    procedure btnCreateCarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddCustomerClick(Sender: TObject);
  end;

var
  frmDemo: TfrmDemo;

implementation

uses
  AbstractCarFactory,
  Car,
  AdaptedCustomer,
  NewCustomer;

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
end;

end.
