unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Controls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Bind.Navigator,
  Vcl.Grids, Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.WinXCalendars, FireDAC.Stan.StorageBin,
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  Vcl.WinXPanels, System.Actions, Vcl.ActnList, Vcl.Themes,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.VirtualImage, System.IOUtils, Vcl.TitleBarCtrls,
  System.Skia, Vcl.Skia, Vcl.Menus, uLogin;

type
  TfrmMain = class(TForm)
    pnlToolbar: TPanel;
    SplitView: TSplitView;
    NavPanel: TPanel;
    NewLeadsSG: TStringGrid;
    BindNavigator1: TBindNavigator;
    lblTitle: TLabel;
    PageControl: TPageControl;
    MOVsTabs: TTabSheet;
    CalendarTab: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Image5: TImage;
    CalendarView1: TCalendarView;
    LeadsSearchBox: TSearchBox;
    Panel4: TPanel;
    Label3: TLabel;
    DashboardTab: TTabSheet;
    Panel5: TPanel;
    Label4: TLabel;
    ImportLeadsDialog: TOpenDialog;
    ExportLeadsDialog: TSaveDialog;
    FlowPanel1: TFlowPanel;
    RelativePanel1: TRelativePanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RelativePanel2: TRelativePanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RelativePanel3: TRelativePanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RelativePanel4: TRelativePanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    RelativePanel5: TRelativePanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RelativePanel6: TRelativePanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    ReportsTab: TTabSheet;
    Panel6: TPanel;
    Label23: TLabel;
    SalesSearchBox: TSearchBox;
    ProposalStringGrid: TStringGrid;
    BindNavigator3: TBindNavigator;
    MunicipalitiesTab: TTabSheet;
    Panel7: TPanel;
    Label24: TLabel;
    AcctSearchBox: TSearchBox;
    AccountsSG: TStringGrid;
    BindNavigator4: TBindNavigator;
    UsersTab: TTabSheet;
    Panel8: TPanel;
    Label25: TLabel;
    SearchBox7: TSearchBox;
    UsersSG: TStringGrid;
    BindNavigator5: TBindNavigator;
    UsernameComboBox: TComboBox;
    MarketingTab: TTabSheet;
    Panel3: TPanel;
    Label2: TLabel;
    EmailsSearchBox: TSearchBox;
    StringGrid2: TStringGrid;
    SaveEmailsDialog: TSaveDialog;
    NewLeadsPanel: TPanel;
    Splitter1: TSplitter;
    Label27: TLabel;
    ActiveLeadsSG: TStringGrid;
    ActiveLeadsPanel: TPanel;
    Label28: TLabel;
    Splitter2: TSplitter;
    ProposalSentPanel: TPanel;
    ProposalSentLeadsSG: TStringGrid;
    Label29: TLabel;
    Splitter3: TSplitter;
    ClosedPanel: TPanel;
    ClosedLeadsSG: TStringGrid;
    Label30: TLabel;
    VCLStylesCB: TComboBox;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    ViewLeadButton: TSpeedButton;
    CreateLeadButton: TSpeedButton;
    ExportLeadsButton: TSpeedButton;
    LeadsRelativePanel: TRelativePanel;
    AcctsRelativePanel: TRelativePanel;
    ExportAcctsButton: TSpeedButton;
    RemoveAcctButton: TSpeedButton;
    CreateAcctButton: TSpeedButton;
    ProposalsRelativePanel: TRelativePanel;
    CancelProposalButton: TSpeedButton;
    CompleteProposalButton: TSpeedButton;
    MarketingRelativePanel: TRelativePanel;
    ExportEmailsButton: TSpeedButton;
    UsersRelativePanel: TRelativePanel;
    CreateUserButton: TSpeedButton;
    RemoveUserButton: TSpeedButton;
    DashboardButton: TButton;
    btnMunicipalities: TButton;
    btnMOVs: TButton;
    btnReports: TButton;
    MarketingButton: TButton;
    CalendarButton: TButton;
    UsersButton: TButton;
    ExportAcctsDialog: TSaveDialog;
    VirtualImage1: TVirtualImage;
    VirtualImage2: TVirtualImage;
    VirtualImage3: TVirtualImage;
    VirtualImage4: TVirtualImage;
    VirtualImage5: TVirtualImage;
    VirtualImage6: TVirtualImage;
    VirtualImage7: TVirtualImage;
    MenuVirtualImage: TVirtualImage;
    VirtualImage9: TVirtualImage;
    VirtualImage10: TVirtualImage;
    VirtualImage11: TVirtualImage;
    VirtualImage12: TVirtualImage;
    VirtualImage13: TVirtualImage;
    VirtualImage14: TVirtualImage;
    Panel1: TPanel;
    lbUserStatus: TSkLabel;
    MainMenu1: TMainMenu;
    Options1: TMenuItem;
    Login: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    VirtualImage8: TVirtualImage;
    LogOut: TMenuItem;
    btnEdit: TSpeedButton;
    procedure CalendarView1DrawDayItem(Sender: TObject;
      DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure AcctSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure LeadsSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure SalesSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure EmailsSearchBoxKeyPress(Sender: TObject; var Key: Char);
    procedure NewLeadsSGEnter(Sender: TObject);
    procedure ActiveLeadsSGEnter(Sender: TObject);
    procedure ProposalSentLeadsSGEnter(Sender: TObject);
    procedure ClosedLeadsSGEnter(Sender: TObject);
    procedure NewLeadsSGDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure NewLeadsSGDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure NewLeadsSGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VCLStylesCBChange(Sender: TObject);
    procedure LeadsRelativePanelResize(Sender: TObject);
    procedure AcctsRelativePanelResize(Sender: TObject);
    procedure ProposalsRelativePanelResize(Sender: TObject);
    procedure MarketingRelativePanelResize(Sender: TObject);
    procedure UsersRelativePanelResize(Sender: TObject);
    procedure CreateLeadButtonClick(Sender: TObject);
    procedure ExportLeadsButtonClick(Sender: TObject);
    procedure ViewLeadButtonClick(Sender: TObject);
    procedure ExportEmailsButtonClick(Sender: TObject);
    procedure SplitViewOpening(Sender: TObject);
    procedure SplitViewClosing(Sender: TObject);
    procedure CreateAcctButtonClick(Sender: TObject);
    procedure DashboardButtonClick(Sender: TObject);
    procedure MunicipalitiesTabResize(Sender: TObject);
    procedure RemoveAcctButtonClick(Sender: TObject);
    procedure ExportAcctsButtonClick(Sender: TObject);
    procedure CreateUserButtonClick(Sender: TObject);
    procedure RemoveUserButtonClick(Sender: TObject);
    procedure UsersTabResize(Sender: TObject);
    procedure CancelProposalButtonClick(Sender: TObject);
    procedure CompleteProposalButtonClick(Sender: TObject);
    procedure MenuVirtualImageClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure UsernameComboBoxKeyPress(Sender: TObject; var Key: Char);
    procedure UsernameComboBoxChange(Sender: TObject);
    procedure NewLeadsSGDblClick(Sender: TObject);
    procedure ActiveLeadsSGDblClick(Sender: TObject);
    procedure VCLStylesCBKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoginClick(Sender: TObject);
    procedure LogOutClick(Sender: TObject);
  private
    { Private declarations }
    FRanOnce: Boolean;
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure RefreshGrids;
    procedure UpdateNavButtons;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDataMod, uLeads, uDraftProposal, uProposal;

procedure TfrmMain.RefreshGrids;
begin
//  LeadsBindClosedSourceDB.DataSet.Refresh;
//  LeadsBindActiveSourceDB.DataSet.Refresh;
//  LeadsBindNewSourceDB.DataSet.Refresh;
//  LeadsBindProposalSentSourceDB.DataSet.Refresh;
end;

procedure TfrmMain.RemoveAcctButtonClick(Sender: TObject);
begin
//  AcctBindSourceDB.DataSet.Delete;
end;

procedure TfrmMain.RemoveUserButtonClick(Sender: TObject);
begin
//  UsersBindSourceDB.DataSet.Delete;
end;

procedure TfrmMain.AcctSearchBoxKeyPress(Sender: TObject; var Key: Char);
begin
//
end;

procedure TfrmMain.CalendarView1DrawDayItem(Sender: TObject;
  DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
begin
  if DayOfWeek(CalendarViewViewInfo.Date) in [1, 7] then
  begin
    DrawParams.Font.Style := [fsBold];
  end;
end;

procedure TfrmMain.CancelProposalButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmMain.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex=0 then
    begin
//      DM.FDQueryNewTotal.Refresh;
//      DM.FDQueryActiveTotal.Refresh;
//      DM.FDQueryProposalTotal.Refresh;
//      DM.FDQueryInactiveTotal.Refresh;
//      DM.FDQueryClosedTotal.Refresh;
//      DM.FDQueryTotal.Refresh;
    end;
  case PageControl.ActivePageIndex of
    0: DashboardButton.SetFocus;
    1: btnMunicipalities.SetFocus;
    2: btnMOVs.SetFocus;
    3: btnReports.SetFocus;
    4: begin
      MarketingButton.SetFocus;
//      EmailsBindSourceDB.DataSet.Refresh;
    end;
    5: CalendarButton.SetFocus;
    6: UsersButton.SetFocus;
  end;

end;

procedure TfrmMain.SalesSearchBoxKeyPress(Sender: TObject; var Key: Char);
begin
//  DM.SearchProposals(SalesSearchBox.Text);
end;

procedure TfrmMain.SplitViewClosing(Sender: TObject);
begin
  DashboardButton.Caption := '';
  btnMunicipalities.Caption := '';
  btnMOVs.Caption := '';
  btnReports.Caption := '';
  MarketingButton.Caption := '';
  CalendarButton.Caption := '';
  UsersButton.Caption := '';
end;

procedure TfrmMain.SplitViewOpening(Sender: TObject);
begin
  DashboardButton.Caption := '          '+DashboardButton.Hint;
  btnMunicipalities.Caption := '          '+btnMunicipalities.Hint;
  btnMOVs.Caption := '          '+btnMOVs.Hint;
  btnReports.Caption := '          '+btnReports.Hint;
  MarketingButton.Caption := '          '+MarketingButton.Hint;
  CalendarButton.Caption := '          '+CalendarButton.Hint;
  UsersButton.Caption := '          '+UsersButton.Hint;
end;

procedure TfrmMain.MunicipalitiesTabResize(Sender: TObject);
begin
//
end;

procedure TfrmMain.UsersTabResize(Sender: TObject);
begin
//
end;

procedure TfrmMain.UsernameComboBoxChange(Sender: TObject);
begin
  LeadsForm.Close;
  DraftProposalForm.Close;
  ProposalForm.Close;
//  DM.SetUser(UsernameComboBox.Text);
end;

procedure TfrmMain.UsernameComboBoxKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TfrmMain.UsersRelativePanelResize(Sender: TObject);
begin
  if UsersRelativePanel.Width<=436 then
  begin
    CreateUserButton.Caption := '';
    CreateUserButton.Width := 40;
    RemoveUserButton.Caption := '';
    RemoveUserButton.Width := 40;
  end
  else
  begin
    CreateUserButton.Caption := CreateUserButton.Hint;
    CreateUserButton.Width := 121;
    RemoveUserButton.Caption := RemoveUserButton.Hint;
    RemoveUserButton.Width := 121;
  end;
end;

procedure TfrmMain.VCLStylesCBChange(Sender: TObject);
begin
  frmMain.WindowState := TWindowState.wsMaximized;
  TStyleManager.TrySetStyle(VCLStylesCB.Text);
  UpdateNavButtons;
end;

procedure TfrmMain.VCLStylesCBKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TfrmMain.ViewLeadButtonClick(Sender: TObject);
begin
  LeadsForm.Show;
end;

procedure TfrmMain.MenuVirtualImageClick(Sender: TObject);
begin
  SplitView.Opened := not SplitView.Opened;
end;

procedure TfrmMain.AcctsRelativePanelResize(Sender: TObject);
begin
  if AcctsRelativePanel.Width<=634 then
  begin

    ExportAcctsButton.Caption := '';
    ExportAcctsButton.Width := 40;
    CreateAcctButton.Caption := '';
    CreateAcctButton.Width := 40;
    RemoveAcctButton.Caption := '';
    RemoveAcctButton.Width := 40;
  end
  else
  begin
    ExportAcctsButton.Caption := ExportAcctsButton.Hint;
    ExportAcctsButton.Width := 112;
    CreateAcctButton.Caption := CreateAcctButton.Hint;
    CreateAcctButton.Width := 112;
    RemoveAcctButton.Caption := RemoveAcctButton.Hint;
    RemoveAcctButton.Width := 112;
  end;
end;

procedure TfrmMain.ActiveLeadsSGDblClick(Sender: TObject);
begin
  ViewLeadButtonClick(Sender);
end;

procedure TfrmMain.ActiveLeadsSGEnter(Sender: TObject);
begin
//  LeadsForm.LocateLead(LeadsBindActiveSourceDB.DataSet.FieldByName('LeadId').AsInteger);
//  BindNavigator1.DataSource := LeadsBindActiveSourceDB;
end;

procedure TfrmMain.ProposalSentLeadsSGEnter(Sender: TObject);
begin
//  LeadsForm.LocateLead(LeadsBindProposalSentSourceDB.DataSet.FieldByName('LeadId').AsInteger);
//  BindNavigator1.DataSource := LeadsBindProposalSentSourceDB;
end;

procedure TfrmMain.ProposalsRelativePanelResize(Sender: TObject);
begin
  if ProposalsRelativePanel.Width<=436 then
  begin
    CompleteProposalButton.Caption := '';
    CompleteProposalButton.Width := 40;
    CancelProposalButton.Caption := '';
    CancelProposalButton.Width := 40;
  end
  else
  begin
    CompleteProposalButton.Caption := CompleteProposalButton.Hint;
    CompleteProposalButton.Width := 121;
    CancelProposalButton.Caption := CancelProposalButton.Hint;
    CancelProposalButton.Width := 121;
  end;
end;

procedure TfrmMain.ClosedLeadsSGEnter(Sender: TObject);
begin
//  LeadsForm.LocateLead(LeadsBindClosedSourceDB.DataSet.FieldByName('LeadId').AsInteger);
//  BindNavigator1.DataSource := LeadsBindClosedSourceDB;
end;

procedure TfrmMain.CompleteProposalButtonClick(Sender: TObject);
begin
//  if ProposalBindSourceDB.DataSet.RecordCount>0 then
//  begin
//    DM.UpdateProposalStatus(ProposalBindSourceDB.DataSet.FieldByName('LeadId').AsInteger,'Accepted');
//    ProposalBindSourceDB.DataSet.Refresh;
//  end;
end;

procedure TfrmMain.CreateAcctButtonClick(Sender: TObject);
var
LNewAccount: String;
begin
  LNewAccount := InputBox('Create New Account', 'Account Name', 'New Account');
end;

procedure TfrmMain.CreateLeadButtonClick(Sender: TObject);
begin
  LeadsForm.Show;
end;

procedure TfrmMain.CreateUserButtonClick(Sender: TObject);
var
LNewUser: String;
begin
//
end;

procedure TfrmMain.DashboardButtonClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := TButton(Sender).Tag;
end;

procedure TfrmMain.LeadsRelativePanelResize(Sender: TObject);
begin
  if LeadsRelativePanel.Width<=781 then
  begin

    ExportLeadsButton.Caption := '';
    ExportLeadsButton.Width := 40;
    CreateLeadButton.Caption := '';
    CreateLeadButton.Width := 40;
    ViewLeadButton.Caption := '';
    ViewLeadButton.Width := 40;
  end
  else
  begin
    ExportLeadsButton.Caption := ExportLeadsButton.Hint;
    ExportLeadsButton.Width := 153;
    CreateLeadButton.Caption := CreateLeadButton.Hint;
    CreateLeadButton.Width := 153;
    ViewLeadButton.Caption := ViewLeadButton.Hint;
    ViewLeadButton.Width := 153;
  end;
end;

procedure TfrmMain.LeadsSearchBoxKeyPress(Sender: TObject; var Key: Char);
begin
//
end;

procedure TfrmMain.MarketingRelativePanelResize(Sender: TObject);
begin
  if MarketingRelativePanel.Width<=320 then
  begin
    ExportEmailsButton.Caption := '';
    ExportEmailsButton.Width := 40;
  end
  else
  begin
    ExportEmailsButton.Caption := ExportEmailsButton.Hint;
    ExportEmailsButton.Width := 121;
  end;
end;

procedure TfrmMain.NewLeadsSGDblClick(Sender: TObject);
begin
  ViewLeadButtonClick(Sender);
end;

procedure TfrmMain.NewLeadsSGDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  LStatus: String;
  LIndex: Integer;
  LDataSet: TDataSet;
  LDateField: String;
begin
//
end;

procedure TfrmMain.NewLeadsSGDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TStringGrid;
end;

procedure TfrmMain.NewLeadsSGEnter(Sender: TObject);
begin
//
end;

procedure TfrmMain.NewLeadsSGMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
     TStringGrid(Sender).BeginDrag(False,4);
end;

procedure TfrmMain.LoginClick(Sender: TObject);
begin
  frmLogin.Tag := 0;
  frmLogin.ShowModal;

  if frmLogin.Tag = 0 then
  begin
    ShowMessage('Not logged in');
    // Application.Terminate;
  end
  else
  begin
    VirtualImage8.ImageName := 'open';
    lbUserStatus.Caption := 'You are logged in system activated';
    Self.Caption := 'SGLGB System | SEAL OF GOOD LOCAL GOVERNANCE FOR BARANGAY | 2024 | ' ;
    Login.Visible := False;
    LogOut.Visible := True;
  end;
end;

procedure TfrmMain.LogOutClick(Sender: TObject);
begin
  VirtualImage8.ImageName := 'close';
  lbUserStatus.Caption := 'You have logout system deactivated';
  Login.Visible := True;
  LogOut.Visible := False;
end;

procedure TfrmMain.EmailsSearchBoxKeyPress(Sender: TObject; var Key: Char);
begin
//
end;

procedure TfrmMain.ExportAcctsButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmMain.ExportEmailsButtonClick(Sender: TObject);
begin
  if SaveEmailsDialog.Execute then
  begin
//    DM.ExportEmails(SaveEmailsDialog.FileName);
  end;
end;

procedure TfrmMain.ExportLeadsButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmMain.AppIdle(Sender: TObject; var Done: Boolean);
begin
  if not FRanOnce then
  begin
    FRanOnce := True;

    DashboardButton.SetFocus;
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
//  if FRanOnce then
//  begin
//    if LeadsBindSourceDB.DataSet.State = TDataSetState.dsEdit then
//      LeadsBindSourceDB.DataSet.Post;
//    TBindSourceDB(BindNavigator1.DataSource).DataSet.Refresh;
//  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  StyleName: string;
begin
  Application.OnIdle := AppIdle;

  for StyleName in TStyleManager.StyleNames do
    VCLStylesCB.Items.Add(StyleName);

  VCLStylesCB.ItemIndex := VCLStylesCB.Items.IndexOf(TStyleManager.ActiveStyle.Name);

  UpdateNavButtons;
end;

procedure TfrmMain.UpdateNavButtons;
var
  LStyle: Dword;
begin
  LStyle := GetWindowLong(DashboardButton.Handle, GWL_STYLE);
  SetWindowLong(DashboardButton.Handle, GWL_STYLE, LStyle or BS_LEFT);
  DashboardButton.Caption := '          '+DashboardButton.Hint;
  SetWindowLong(btnMunicipalities.Handle, GWL_STYLE, LStyle or BS_LEFT);
  btnMunicipalities.Caption := '          '+btnMunicipalities.Hint;
  SetWindowLong(btnMOVs.Handle, GWL_STYLE, LStyle or BS_LEFT);
  btnMOVs.Caption := '          '+btnMOVs.Hint;
  SetWindowLong(btnReports.Handle, GWL_STYLE, LStyle or BS_LEFT);
  btnReports.Caption := '          '+btnReports.Hint;
  SetWindowLong(MarketingButton.Handle, GWL_STYLE, LStyle or BS_LEFT);
  MarketingButton.Caption := '          '+MarketingButton.Hint;
  SetWindowLong(CalendarButton.Handle, GWL_STYLE, LStyle or BS_LEFT);
  CalendarButton.Caption := '          '+CalendarButton.Hint;
  SetWindowLong(UsersButton.Handle, GWL_STYLE, LStyle or BS_LEFT);
  UsersButton.Caption := '          '+UsersButton.Hint;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  if frmMain.Width<=640 then
  begin
    if SplitView.Opened=True then SplitView.Opened := False;
  end
  else
  begin
    if SplitView.Opened=False then SplitView.Opened := True;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  VCLStylesCB.AutoComplete := True;
  Self.Caption := 'Height: ' + IntToStr(ClientHeight) + ' ' + 'Width: ' + IntToStr(ClientWidth);
end;

end.
