object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 568
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 40
    Width = 72
    Height = 16
    Caption = 'Extrack File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 67
    Width = 82
    Height = 16
    Caption = 'Extrack Path'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 161
    Width = 50
    Height = 16
    Caption = 'Add File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 188
    Width = 50
    Height = 16
    Caption = 'Add File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 88
    Top = 272
    Width = 72
    Height = 16
    Caption = 'Extrack File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 88
    Top = 299
    Width = 82
    Height = 16
    Caption = 'Extrack Path'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 88
    Top = 326
    Width = 63
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 39
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 66
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 503
    Top = 35
    Width = 82
    Height = 52
    Caption = 'Open'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 591
    Top = 35
    Width = 82
    Height = 52
    Caption = 'Extract'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 176
    Top = 160
    Width = 321
    Height = 21
    TabOrder = 4
    Text = 'D:\Zip\AddZip\6.png'
  end
  object Button4: TButton
    Left = 503
    Top = 156
    Width = 82
    Height = 52
    Caption = 'Compress'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit4: TEdit
    Left = 176
    Top = 187
    Width = 321
    Height = 21
    TabOrder = 6
    Text = 'D:\Zip\AddZip\7.png'
  end
  object Edit5: TEdit
    Left = 176
    Top = 271
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 176
    Top = 298
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object Button3: TButton
    Left = 503
    Top = 267
    Width = 82
    Height = 52
    Caption = 'Open'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 591
    Top = 267
    Width = 130
    Height = 52
    Caption = 'Extract With Password'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Edit7: TEdit
    Left = 176
    Top = 325
    Width = 321
    Height = 21
    TabOrder = 11
    Text = 'IamGroot'
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Zip Files'
        FileMask = '*.zip'
      end>
    Options = []
    Left = 40
    Top = 40
  end
end
