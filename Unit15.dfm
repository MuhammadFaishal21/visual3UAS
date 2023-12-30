object Form15: TForm15
  Left = 238
  Top = 107
  Width = 928
  Height = 480
  Caption = 'Form15'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = -4
    Top = 100
    Width = 905
    Height = 117
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obat_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exp_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'beli'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok_obat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_exp'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obat_id_1'
        Visible = True
      end>
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
    Left = 48
    Top = 44
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT *'
      'FROM detail_beli'
      'INNER JOIN obat ON detail_beli.obat_id = obat.id'
      'INNER JOIN exp_obat ON detail_beli.exp_id = exp_obat.id;')
    Params = <>
    Left = 164
    Top = 36
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 96
    Top = 36
  end
end
