object DM: TDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 576
  Width = 753
  object conSGLGB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\user\Documents\Delphi\SGLGB-System\Win32\datab' +
        'ase\sglgb.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 328
    Top = 40
  end
  object qMunicipalities: TFDQuery
    Connection = conSGLGB
    UpdateOptions.AutoIncFields = 'id'
    SQL.Strings = (
      'SELECT * FROM municipalities')
    Left = 80
    Top = 120
    object qMunicipalitiesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qMunicipalitiesmunicipality: TStringField
      DisplayWidth = 100
      FieldName = 'municipality'
      Origin = 'municipality'
      Required = True
      Size = 100
    end
  end
  object dsMunicipalities: TDataSource
    DataSet = qMunicipalities
    Left = 192
    Top = 120
  end
end
