object Form16: TForm16
  Left = 138
  Top = 157
  Width = 928
  Height = 480
  Caption = 'Form16'
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
        FieldName = 'jumlah_terjual'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qty'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pt'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_pt'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor_telpon'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obat_id_1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exp_id_1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qty_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'beli'
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
      'FROM detail_jual'
      'INNER JOIN supplier ON detail_jual.obat_id = supplier.id'
      'INNER JOIN pembeli ON detail_jual.exp_id = pembeli.id;')
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
