object Form1: TForm1
  Left = 341
  Top = 167
  Width = 573
  Height = 323
  Caption = 'ELEKTOR : FIR Utility'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 144
    Width = 137
    Height = 24
    Caption = 'High Frequency'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 176
    Width = 132
    Height = 24
    Caption = 'Low Frequency'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 80
    Width = 138
    Height = 24
    Caption = 'Nr of coëfficients'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 48
    Width = 161
    Height = 24
    Caption = 'Sample Frequency'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 112
    Width = 150
    Height = 24
    Caption = 'bits per coëfficient'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 240
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '4000'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 240
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1000'
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 256
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Generate HEX'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 240
    Top = 88
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '128'
    OnChange = Edit1Change
  end
  object Edit4: TEdit
    Left = 240
    Top = 56
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = '48000'
    OnChange = Edit1Change
  end
  object Edit5: TEdit
    Left = 240
    Top = 120
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 5
    Text = '16'
    OnChange = Edit1Change
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.hex'
    Filter = 'HEX-files|*.hex'
    InitialDir = '..\Data'
    Title = 'Save HEX-file'
    Left = 456
    Top = 8
  end
end
