object dmpub: Tdmpub
  OldCreateOrder = False
  Height = 503
  Width = 573
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=pubs;Data Source=IMAGINE-PC\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 472
    Top = 432
  end
  object tbooks: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'titles'
    Left = 192
    Top = 328
    object tbookstitle_id: TStringField
      DisplayWidth = 11
      FieldName = 'title_id'
      Size = 6
    end
    object tbookstitle: TStringField
      DisplayWidth = 63
      FieldName = 'title'
      Size = 80
    end
    object tbooksprice: TBCDField
      DisplayWidth = 12
      FieldName = 'price'
      Precision = 19
    end
    object tbookstype: TStringField
      DisplayWidth = 15
      FieldName = 'type'
      FixedChar = True
      Size = 12
    end
    object tbooksadvance: TBCDField
      DisplayWidth = 12
      FieldName = 'advance'
      Precision = 19
    end
    object tbooksnotes: TStringField
      DisplayWidth = 288
      FieldName = 'notes'
      Size = 200
    end
  end
  object qbooktype: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Distinct'
      'Type from titles')
    Left = 248
    Top = 376
    object qbooktypeType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 12
    end
  end
  object dsBooktype: TDataSource
    AutoEdit = False
    DataSet = qbooktype
    Left = 248
    Top = 432
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 'titles'
    CommandType = cmdTable
    Parameters = <
      item
        Name = 'booktype'
        DataType = ftString
        Size = 12
        Value = ''
      end>
    Left = 328
    Top = 304
  end
  object qbooks: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from titles')
    Left = 192
    Top = 376
  end
  object dsbooks: TDataSource
    DataSet = tbooks
    Left = 192
    Top = 432
  end
end
