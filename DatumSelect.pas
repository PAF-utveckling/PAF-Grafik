unit DatumSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AeroButtons;

type
  TDatumForm = class(TForm)
    DatePicker: TAdvSmoothDatePicker;
    AeroButton1: TAeroButton;
    AeroButton2: TAeroButton;
    procedure AeroButton1Click(Sender: TObject);
    procedure AeroButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TempDatum: TDate;
  end;

var
  DatumForm: TDatumForm;

implementation

{$R *.dfm}

procedure TDatumForm.AeroButton1Click(Sender: TObject);
begin
  TempDatum:=DatePicker.Date;
  Close
end;

procedure TDatumForm.AeroButton2Click(Sender: TObject);
begin
  Close
end;

procedure TDatumForm.FormShow(Sender: TObject);
begin
  DatePicker.Date:=TempDatum;
end;

end.
