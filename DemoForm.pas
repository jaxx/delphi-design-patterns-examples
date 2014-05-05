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
  AbstractCarFactory,
  Car,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvPageListTreeView,
  JvPageList,
  JvExControls;

type
  TfrmDemo = class(TForm)
    cbbFactorySelect: TComboBox;
    btnCreateCar: TButton;
    lstCarsCreated: TListBox;
    pltvMenu: TJvPageListTreeView;
    plPages: TJvPageList;
    plspAbstractFactory: TJvStandardPage;
    plspAdapter: TJvStandardPage;
    procedure btnCreateCarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  frmDemo: TfrmDemo;

implementation

{$R *.dfm}

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
