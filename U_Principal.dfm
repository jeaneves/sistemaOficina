object F_Principal: TF_Principal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sistema de Oficina - Principal'
  ClientHeight = 569
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 550
    Width = 769
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 769
    Height = 39
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Images = Data_Module.ListCustom32x32
    TabOrder = 1
    object btnClienteFornecedor: TcxButton
      Left = 0
      Top = 0
      Width = 75
      Height = 38
      Align = alLeft
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = Data_Module.ListCustom32x32
      TabOrder = 1
      OnClick = btnClienteFornecedorClick
    end
    object ToolButton2: TToolButton
      Left = 75
      Top = 0
      Width = 614
      Caption = 'ToolButton2'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object btnSair: TcxButton
      Left = 689
      Top = 0
      Width = 75
      Height = 38
      Align = alRight
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = Data_Module.listbotoes32x32
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 648
    Top = 344
    object Cadastros1: TMenuItem
      Caption = '&Manuten'#231#245'es'
      object N1: TMenuItem
        Caption = '&Cliente / Fornecedor'
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object Processos1: TMenuItem
      Caption = '&Processos'
    end
    object Consultas1: TMenuItem
      Caption = 'C&onsultas'
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
    end
  end
end
