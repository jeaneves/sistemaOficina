unit U_CadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ToolWin, Data.DB;

type
  TF_CadPadrao = class(TForm)
    ToolBar1: TToolBar;
    btnNovo: TToolButton;
    btnGravar: TToolButton;
    btnEditar: TToolButton;
    btnDeletar: TToolButton;
    btnCancelar: TToolButton;
    btnPesquisar: TToolButton;
    btnPrimeiro: TToolButton;
    btnAnterior: TToolButton;
    btnPosterior: TToolButton;
    btnUltimo: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DS_Padrao: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnPosteriorClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure HabilitaControles;
    procedure HabilitaControlesVisuais(Status: Boolean);
    procedure FormCreate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadPadrao: TF_CadPadrao;

implementation

{$R *.dfm}

uses U_Modulo;

procedure TF_CadPadrao.btnAnteriorClick(Sender: TObject);
begin
  HabilitaControles;
  DS_Padrao.DataSet.Prior;
end;

procedure TF_CadPadrao.btnCancelarClick(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(False);
  with DS_Padrao.DataSet do
  begin
    cancel;
    Filtered := False;
  end;
end;

procedure TF_CadPadrao.btnDeletarClick(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(False);
  if MessageDlg('Deseja Excluir o registro ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DS_Padrao.DataSet.Delete;
  end
  else
    Abort;

end;

procedure TF_CadPadrao.btnEditarClick(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(True);
  DS_Padrao.DataSet.Edit;
end;

procedure TF_CadPadrao.btnGravarClick(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(False);
  DS_Padrao.DataSet.Post;
  DS_Padrao.DataSet.Filtered := False;
end;

procedure TF_CadPadrao.btnNovoClick(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(True);
  DS_Padrao.DataSet.Insert;
end;

procedure TF_CadPadrao.btnPosteriorClick(Sender: TObject);
begin
  HabilitaControles;
  DS_Padrao.DataSet.Next;
end;

procedure TF_CadPadrao.btnPrimeiroClick(Sender: TObject);
begin
  HabilitaControles;
  DS_Padrao.DataSet.First;
end;

procedure TF_CadPadrao.btnUltimoClick(Sender: TObject);
begin
  HabilitaControles;
  DS_Padrao.DataSet.Last;
end;

procedure TF_CadPadrao.FormCreate(Sender: TObject);
begin
  Try
    DS_Padrao.DataSet.Open;
    HabilitaControles;
    HabilitaControlesVisuais(False);
  except
    on e: Exception do
    begin
      ShowMessage('Erro ao conectar base de dados' +#13+'Erro : ' + E.Message +#13+'Classe : ' + E.ClassName);
    end;
End;
end;

procedure TF_CadPadrao.ToolButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TF_CadPadrao.HabilitaControles;
begin
  BtnNovo.Enabled     := not(DS_Padrao.DataSet.State in [dsInsert, dsEdit]);
  BtnGravar.Enabled   := (DS_Padrao.DataSet.State in [dsInsert, dsEdit]);
  BtnEditar.Enabled   := (DS_Padrao.DataSet.State in [dsBrowse]);
  BtnDeletar.Enabled  := (DS_Padrao.DataSet.State in [dsBrowse, dsEdit]);
  BtnCancelar.Enabled := (DS_Padrao.DataSet.State in [dsInsert, dsEdit]);
  btnPesquisar.Enabled := not (DS_Padrao.DataSet.State in [dsInsert, dsEdit]);

end;

procedure TF_CadPadrao.HabilitaControlesVisuais(Status: Boolean);
var
 i : Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
      TDBEdit(Components[I]).Enabled := Status
    else if Components[I] is TDBLookupComboBox then
      TDBLookupComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBComboBox then
      TDBComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBMemo then
      TDBMemo(Components[I]).Enabled := Status;
  end;

end;

end.
