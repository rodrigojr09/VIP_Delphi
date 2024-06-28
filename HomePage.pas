unit HomePage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, Empresa, System.Threading;

type
  THomeForm = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    btnEntrar: TRectangle;
    Label3: TLabel;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Nome:string;
  end;

var
  HomeForm: THomeForm;

implementation

{$R *.fmx}
  uses NovoSetor;

procedure THomeForm.btnEntrarClick(Sender: TObject);
var
  Setor:TSetor;
begin
    Nome := txtNome.Text;
    txtNome.Text := '';
   TThread.Queue(nil, procedure
  begin
    Setor := TSetor.Create(Application);
    Setor.Show;
  end);
end;
end.
