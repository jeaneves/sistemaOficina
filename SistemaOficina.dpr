program SistemaOficina;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_CadPadrao in 'U_CadPadrao.pas' {F_CadPadrao},
  U_ConsPadrao in 'U_ConsPadrao.pas' {F_ConsPadrao},
  U_Modulo in 'U_Modulo.pas' {Data_Module: TDataModule},
  U_CadastroClienteFornecedor in 'U_CadastroClienteFornecedor.pas' {F_CadastroClienteFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TData_Module, Data_Module);
  Application.Run;
end.
