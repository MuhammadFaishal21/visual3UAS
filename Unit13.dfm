object Form13: TForm13
  Left = 409
  Top = 207
  Width = 561
  Height = 480
  Caption = 'Form13'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 136
    Top = 28
    Width = 185
    Height = 29
    Caption = 'REGISTER USER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 156
    Top = 108
    Width = 26
    Height = 25
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 112
    Top = 152
    Width = 119
    Height = 25
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 100
    Top = 204
    Width = 123
    Height = 25
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object e_1: TEdit
    Left = 236
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 236
    Top = 156
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_3: TEdit
    Left = 232
    Top = 204
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object b1: TButton
    Left = 120
    Top = 280
    Width = 75
    Height = 25
    Caption = 'REGISTER'
    TabOrder = 3
    OnClick = b1Click
  end
  object b2: TButton
    Left = 228
    Top = 276
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = b2Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'visual3'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Visual3 Tugas\libmysql.dll'
    Left = 348
    Top = 60
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from table_user'
      ''
      '')
    Params = <>
    Left = 428
    Top = 60
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 380
    Top = 60
  end
end
