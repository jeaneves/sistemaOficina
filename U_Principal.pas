unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    Cadastros1: TMenuItem;
    Processos1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Button1: TButton;
    btnImprimir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

procedure TF_Principal.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
