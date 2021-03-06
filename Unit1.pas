unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, System.ImageList,
  FMX.ImgList,  FMX.Ani, FMX.WebBrowser, FMX.TabControl, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Data.DB, FMX.ListBox, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, FireDAC.Stan.StorageBin, DateUtils;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Brush1: TBrushObject;
    Text1: TText;
    Circle1: TCircle;
    Rectangle19: TRectangle;
    Text2: TText;
    Text3: TText;
    Text18: TText;
    Brush2: TBrushObject;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Text13: TText;
    Text14: TText;
    Text15: TText;
    Text16: TText;
    Text17: TText;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    ColorAnimation3: TColorAnimation;
    ColorAnimation4: TColorAnimation;
    ColorAnimation5: TColorAnimation;
    ColorAnimation6: TColorAnimation;
    ColorAnimation7: TColorAnimation;
    ColorAnimation8: TColorAnimation;
    ColorAnimation9: TColorAnimation;
    ColorAnimation10: TColorAnimation;
    ColorAnimation11: TColorAnimation;
    ColorAnimation12: TColorAnimation;
    ColorAnimation13: TColorAnimation;
    ColorAnimation14: TColorAnimation;
    ColorAnimation15: TColorAnimation;
    ColorAnimation16: TColorAnimation;
    ColorAnimation17: TColorAnimation;
    ColorAnimation18: TColorAnimation;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Rectangle20: TRectangle;
    Circle2: TCircle;
    textPrevious: TText;
    textCurrent: TText;
    Rectangle18: TRectangle;
    Rectangle21: TRectangle;
    Rectangle22: TRectangle;
    Edit1: TEdit;
    procedure Circle2Click(Sender: TObject);
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Circle1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  resultatField :string;
  currentNumber, PreviousNumber :real;


  addNumberTXT, operationType :string;
  addNumber :real;


implementation

{$R *.fmx}

procedure TForm1.Circle1Click(Sender: TObject);
begin
  textCurrent.Text := '';
  textPrevious.Text := '';
  previousNumber := 0;
  currentNumber := 0;
end;

procedure TForm1.Circle2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
end;

// Drag Window From Top Bar
procedure TForm1.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure TForm1.Rectangle2Click(Sender: TObject);
begin
  addNumberTXT := addNumberTXT+'1';
  textCurrent.Text := addNumberTXT;
end;

procedure TForm1.Rectangle9Click(Sender: TObject);
begin

  operationType := '+';
  //textPrevious.Text := textPrevious.Text + addNumberTXT;
  if addNumberTXT<>'' then addNumber := strtofloat(addNumberTXT);

  textPrevious.Text :=  floattostr(addNumber);

  addNumberTXT := '';
  textCurrent.Text := addNumberTXT;
end;

end.

