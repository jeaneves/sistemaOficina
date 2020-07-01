program SistemaOficina;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_CadPadrao in 'U_CadPadrao.pas' {F_CadPadrao},
  U_ConsPadrao in 'U_ConsPadrao.pas' {F_ConsPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_CadPadrao, F_CadPadrao);
  Application.CreateForm(TF_ConsPadrao, F_ConsPadrao);
  Application.Run;
end.
