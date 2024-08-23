program SGLGB;

uses
  Vcl.Forms,
  uDataMod in 'Data Module\uDataMod.pas' {DM: TDataModule},
  uMainForm in 'Main\uMainForm.pas' {frmMain},
  uLogin in 'Modal\uLogin.pas' {frmLogin},
  uSettings in 'Modal\uSettings.pas' {frmSettings},
  Vcl.Themes,
  Vcl.Styles,
  uDCF in 'Form\uDCF.pas' {frmDCF},
  Activated in 'Settings\Activated.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmDCF, frmDCF);
  Application.Run;
end.
