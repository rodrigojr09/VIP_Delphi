unit NovoSetor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls,HomePage;

type
  TSetor = class(TForm)
    Rectangle1: TRectangle;
    Title: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setor: TSetor;

implementation

{$R *.fmx}

procedure TSetor.FormCreate(Sender: TObject);
begin
  Title.Text := Title.Text+HomeForm.Nome;
end;

end.
