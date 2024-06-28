unit Empresa;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections;

type
  TSetor = class
  private
    Nome: string;
  public
    constructor Create(const AValue: string);
    property SNome: string read Nome write Nome;
  end;

  TEmpresa = class
    Nome: string;
    Setores: TObjectList<TSetor>;
  public
    constructor Create(const AValue: string);
    destructor Destroy; override;
  end;

implementation

{ TSetor }

constructor TSetor.Create(const AValue: string);
begin
  Nome := AValue;
end;

{ TEmpresa }

constructor TEmpresa.Create(const AValue: string);
begin
  Nome := AValue;
  Setores := TObjectList<TSetor>.Create;
end;

destructor TEmpresa.Destroy;
begin
  Setores.Free;
  inherited;
end;

end.

