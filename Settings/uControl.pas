unit uControl;

interface

uses
 VCL.Dialogs;

procedure FormActivated;
procedure FormLogout;

implementation

uses
  uMainForm, uLogin;

procedure FormActivated;
begin
  frmLogin.Tag := 0;
  frmLogin.ShowModal;

  if frmLogin.Tag = 0 then
  begin
    ShowMessage('Not logged in');
  end
  else
  begin
    with frmMain do
    begin
      viUserStatus.ImageName := 'open';
      lbUserStatus.Caption := 'You are logged in, system activated';
      Caption :=
        'SGLGB System | SEAL OF GOOD LOCAL GOVERNANCE FOR BARANGAY | 2024 | ';
      Login.Visible := False;
      LogOut.Visible := True;

      // Sidebar buttons
      btnDashboard.Enabled := True;
      btnDCF.Enabled := True;
      btnMOVs.Enabled := True;
      btnCalendar.Enabled := True;
      btnUsers.Enabled := True;

      // Page Control
      PageControl.Enabled := True;

      // Set Focus
      btnDashboard.SetFocus;
    end;
  end
end;

procedure FormLogout;
begin
  frmLogin.Tag := 0;

  with frmMain do
  begin
    viUserStatus.ImageName := 'close';
    lbUserStatus.Caption := 'You have logout, system deactivated';
    Login.Visible := True;
    LogOut.Visible := False;

    // Sidebar buttons
    btnDashboard.Enabled := False;
    btnDCF.Enabled := False;
    btnMOVs.Enabled := False;
    btnCalendar.Enabled := False;
    btnUsers.Enabled := False;

    // Page Control
    PageControl.Enabled := False;
  end;
end;

end.
