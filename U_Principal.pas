unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin, U_Modulo, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxButtons;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Processos1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    N2: TMenuItem;
    Usurios1: TMenuItem;
    ToolBar1: TToolBar;
    btnSair: TcxButton;
    ToolButton2: TToolButton;
    btnClienteFornecedor: TcxButton;
    procedure N1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;



implementation

{$R *.dfm}

uses U_CadastroClienteFornecedor;

procedure TF_Principal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Principal.btnClienteFornecedorClick(Sender: TObject);
begin
   F_CadastroClienteFornecedor := TF_CadastroClienteFornecedor.Create(Application);
 F_CadastroClienteFornecedor.Show;
end;

procedure TF_Principal.N1Click(Sender: TObject);
begin
 F_CadastroClienteFornecedor := TF_CadastroClienteFornecedor.Create(Application);
 F_CadastroClienteFornecedor.Show;
end;

end.
