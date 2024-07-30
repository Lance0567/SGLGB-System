program SGLGB;

uses
  Vcl.Forms,
  uMainForm in 'Main\uMainForm.pas' {frmMain},
  uDataMod in 'Data Module\uDataMod.pas' {DM: TDataModule},
  uDraftProposal in 'Modal\uDraftProposal.pas' {DraftProposalForm},
  uLeads in 'Modal\uLeads.pas' {LeadsForm},
  uProposal in 'Modal\uProposal.pas' {ProposalForm},
  Vcl.Themes,
  Vcl.Styles,
  uLogin in 'Modal\uLogin.pas' {frmLogin},
  uMunicipalities in 'Form\uMunicipalities.pas' {Municipalities};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDraftProposalForm, DraftProposalForm);
  Application.CreateForm(TLeadsForm, LeadsForm);
  Application.CreateForm(TProposalForm, ProposalForm);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TMunicipalities, Municipalities);
  Application.Run;
end.
