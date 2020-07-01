unit U_CadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TF_CadPadrao = class(TForm)
    PainelBotoes: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadPadrao: TF_CadPadrao;

implementation

{$R *.dfm}





Procedure BotaoNovo();
begin
   with F_CadPadrao do
   begin
     btnNovo.Enabled     := False;
     btnSalvar.Enabled   := True;
     btnCancelar.Enabled := True;
     btnEditar.Enabled   := False;
     btnExcluir.Enabled  := False;
   end;
end;

Procedure BotaoSalvar();
begin
   with F_CadPadrao do
   begin
     btnNovo.Enabled     := True;
     btnSalvar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnEditar.Enabled   := False;
     btnExcluir.Enabled  := False;
   end;
end;


Procedure BotaoCancelar();
begin
   with F_CadPadrao do
   begin
     btnNovo.Enabled     := True;
     btnSalvar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnEditar.Enabled   := False;
     btnExcluir.Enabled  := False;
   end;
end;

Procedure BotaoEditar();
begin
   with F_CadPadrao do
   begin
     btnNovo.Enabled     := True;
     btnSalvar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnEditar.Enabled   := False;
     btnExcluir.Enabled  := False;
   end;
end;


Procedure BotaoExcluir();
begin
   with F_CadPadrao do
   begin
     btnNovo.Enabled     := True;
     btnSalvar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnEditar.Enabled   := False;
     btnExcluir.Enabled  := False;
   end;
end;

end.
