object F_CadPadrao: TF_CadPadrao
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'CadastroPadrao'
  ClientHeight = 535
  ClientWidth = 624
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 493
    Width = 624
    Height = 42
    Align = alBottom
    ButtonHeight = 39
    ButtonWidth = 49
    Caption = 'ToolBar1'
    Images = Data_Module.listbotoes32x32
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object btnNovo: TToolButton
      Left = 0
      Top = 0
      Hint = 'Novo Registro'
      Caption = 'Novo'
      ImageIndex = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TToolButton
      Left = 49
      Top = 0
      Hint = 'Gravar Registro'
      Caption = 'Gravar'
      ImageIndex = 1
      OnClick = btnGravarClick
    end
    object btnEditar: TToolButton
      Left = 98
      Top = 0
      Caption = 'Editar'
      ImageIndex = 2
      OnClick = btnEditarClick
    end
    object btnDeletar: TToolButton
      Left = 147
      Top = 0
      Hint = 'Deletar Registro'
      Caption = 'Deletar'
      ImageIndex = 11
      OnClick = btnDeletarClick
    end
    object btnCancelar: TToolButton
      Left = 196
      Top = 0
      Hint = 'Cancelar'
      Caption = 'btnCancelar'
      ImageIndex = 4
      OnClick = btnCancelarClick
    end
    object btnPesquisar: TToolButton
      Left = 245
      Top = 0
      Caption = 'Pesquisar'
      ImageIndex = 5
    end
    object btnPrimeiro: TToolButton
      Left = 294
      Top = 0
      Caption = 'btnPrimeiro'
      ImageIndex = 6
      OnClick = btnPrimeiroClick
    end
    object btnAnterior: TToolButton
      Left = 343
      Top = 0
      Caption = 'btnAnterior'
      ImageIndex = 7
      OnClick = btnAnteriorClick
    end
    object btnPosterior: TToolButton
      Left = 392
      Top = 0
      Caption = 'btnPosterior'
      ImageIndex = 8
      OnClick = btnPosteriorClick
    end
    object btnUltimo: TToolButton
      Left = 441
      Top = 0
      Caption = 'btnUltimo'
      ImageIndex = 9
      OnClick = btnUltimoClick
    end
    object ToolButton1: TToolButton
      Left = 490
      Top = 0
      Width = 79
      Caption = 'ToolButton1'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 569
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 10
      OnClick = ToolButton2Click
    end
  end
  object DS_Padrao: TDataSource
    Left = 592
    Top = 8
  end
end
