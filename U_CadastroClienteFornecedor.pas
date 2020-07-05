unit U_CadastroClienteFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_CadPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.ComCtrls, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxDBEdit;

type
  TF_CadastroClienteFornecedor = class(TF_CadPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastroClienteFornecedor: TF_CadastroClienteFornecedor;

implementation

{$R *.dfm}

end.
