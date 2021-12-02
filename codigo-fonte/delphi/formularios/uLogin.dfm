object frmLogin: TfrmLogin
  Left = 342
  Top = 164
  Width = 212
  Height = 146
  BorderIcons = [biSystemMenu]
  Caption = 'Login'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 39
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Edit1: TEdit
    Left = 64
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 20
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    PasswordChar = 'l'
    TabOrder = 1
  end
  object btnEntrar: TButton
    Left = 16
    Top = 72
    Width = 169
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = btnEntrarClick
  end
end
