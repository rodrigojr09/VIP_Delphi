program VIPLevantamento;

uses
  System.StartUpCopy,
  FMX.Forms,
  HomePage in 'HomePage.pas' {HomeForm},
  Empresa in 'Empresa.pas',
  NovoSetor in 'NovoSetor.pas' {Setor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THomeForm, HomeForm);
  Application.CreateForm(TSetor, Setor);
  Application.Run;
end.
