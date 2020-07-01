unit U_ConsPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TF_ConsPadrao = class(TForm)
    PainelBotoes: TPanel;
    btnImprimir: TSpeedButton;
    btnSair: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsPadrao: TF_ConsPadrao;

implementation

{$R *.dfm}

end.
