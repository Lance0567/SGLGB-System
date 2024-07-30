unit uDataMod;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, FireDAC.DApt, System.Variants,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.BatchMove.Text, System.IOUtils,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, System.StrUtils,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TUser = class(Tobject)
    id: Integer;
    username: String;
    isAdmin: boolean;
    isActive: boolean;
  end;

  TDM = class(TDataModule)
    conSGLGB: TFDConnection;
    qMunicipalities: TFDQuery;
    qMunicipalitiesid: TFDAutoIncField;
    qMunicipalitiesmunicipality: TStringField;
    dsMunicipalities: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FUser: TUser;
  public
    { Public declarations }
    property User: TUser read FUser write FUser;
 end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  DBPath: String;
begin
  FUser := TUser.Create;

  conSGLGB.Params.Values['Database'] := '';

  // Get the directory of the executable relative path
  DBPath := ExtractFilePath(ParamStr(0)) + 'database\sglgb.db';
  conSGLGB.Params.Values['DriverID'] := 'SQLite';
  conSGLGB.Params.Values['Database'] := DBPath;

  // Deactivate queries
//  dm.qMunicipalities.Active := False;
//
//  conSGLGB.Connected := True;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
 FUser.Free;
end;

end.
