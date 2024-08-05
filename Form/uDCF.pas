unit uDCF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, System.Skia, Vcl.Skia, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels;

type
  TfrmDCF = class(TForm)
    PageControl1: TPageControl;
    tsFAS: TTabSheet;
    PageControl2: TPageControl;
    tsCompliance: TTabSheet;
    tsInnovations: TTabSheet;
    gpForm1: TGridPanel;
    pMOV: TPanel;
    SkLabel4: TSkLabel;
    tsDetails: TTabSheet;
    ScrollBox2: TScrollBox;
    pForm: TPanel;
    pWrapper: TPanel;
    pYear: TPanel;
    Label1: TLabel;
    edYear: TDBEdit;
    pProfile: TPanel;
    Image1: TImage;
    pBtnHolder: TPanel;
    btnPrint: TButton;
    btnComplete: TButton;
    btnPublish: TButton;
    StatusPanel: TPanel;
    Label2: TLabel;
    DatesPanel: TPanel;
    DateContactedPanel: TPanel;
    Label9: TLabel;
    dtpDateCompleted: TDateTimePicker;
    DateCreatedPanel: TPanel;
    Label8: TLabel;
    dtpDateCreated: TDateTimePicker;
    DateClosedPanel: TPanel;
    dtpDatePublished: TDateTimePicker;
    cbStatus: TComboBox;
    tsDP: TTabSheet;
    NotesPanel: TPanel;
    Label10: TLabel;
    NotesMemo: TMemo;
    NamePanel: TPanel;
    Label3: TLabel;
    edBarangay: TDBEdit;
    pCityMunicipality: TPanel;
    Label4: TLabel;
    edCM: TDBEdit;
    pProvince: TPanel;
    Label5: TLabel;
    edProvince: TDBEdit;
    pRegion: TPanel;
    Label6: TLabel;
    edRegion: TDBEdit;
    Label7: TLabel;
    gpForm2: TGridPanel;
    sklSection2: TSkLabel;
    Panel1: TPanel;
    SkLabel14: TSkLabel;
    Panel2: TPanel;
    SkLabel15: TSkLabel;
    TabSheet1: TTabSheet;
    CardPanel1: TCardPanel;
    Card1: TCard;
    Card2: TCard;
    StaticText1: TStaticText;
    pHeader: TPanel;
    SkLabel1: TSkLabel;
    pMinimumReq: TPanel;
    SkLabel3: TSkLabel;
    gbMinimumReq: TGroupBox;
    SkLabel10: TSkLabel;
    SkLabel11: TSkLabel;
    SkLabel12: TSkLabel;
    SkLabel5: TSkLabel;
    SkLabel6: TSkLabel;
    SkLabel7: TSkLabel;
    SkLabel8: TSkLabel;
    SkLabel9: TSkLabel;
    SkLabel13: TSkLabel;
    pRemarks: TPanel;
    lbRemarks: TLabel;
    SkLabel2: TSkLabel;
    dbmRemarks1: TDBMemo;
    ScrollBox1: TScrollBox;
    pBFDP: TPanel;
    chkbC1: TCheckBox;
    chkbC2: TCheckBox;
    pPhotoDoc: TPanel;
    lbTotalBFDP: TLabel;
    pPhotoDocs: TPanel;
    btnAddPhotoDoc: TButton;
    btnViewPhotoDoc: TButton;
    btnDeletePhotoDoc: TButton;
    dbgPhotoDoc: TDBGrid;
    pPhotoDocHeader: TPanel;
    sPhotoDocBac: TShape;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    chkbC10: TCheckBox;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    chkbC3: TCheckBox;
    chkbC4: TCheckBox;
    chkbC5: TCheckBox;
    chkbC6: TCheckBox;
    chkbC7: TCheckBox;
    pMonthReport: TPanel;
    Label14: TLabel;
    pItemizedMonthlyDoc: TPanel;
    lbItemizedMonthlyCol: TLabel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    sItemizedMonthly: TShape;
    Label17: TLabel;
    chkbC9: TCheckBox;
    pQuarterlyReport: TPanel;
    Label13: TLabel;
    chkbC8: TCheckBox;
    pListOfNoticesDoc: TPanel;
    lbListOfNotices: TLabel;
    Panel3: TPanel;
    btnAddListDoc: TButton;
    btnViewListDocs: TButton;
    Button3: TButton;
    dbgListOfNoticesDoc: TDBGrid;
    Panel4: TPanel;
    sListOfNoticesBac: TShape;
    Label15: TLabel;
    GroupBox7: TGroupBox;
    pStatus1: TPanel;
    Label16: TLabel;
    gpPR1: TGridPanel;
    Label18: TLabel;
    RelativePanel2: TRelativePanel;
    lbYes1: TLabel;
    chkbYes1: TCheckBox;
    lbNo1: TLabel;
    chkbNo1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ScrollBoxMouseWheelHandler(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ShapeBackgrounds;
    procedure PageControl1Change(Sender: TObject);
    procedure DetailsTab;
    procedure FASTab;
    procedure DPTab;
    procedure PageControl2Change(Sender: TObject);
    procedure ComplianceTab;
//    procedure InnovationsTab;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDCF: TfrmDCF;

implementation

{$R *.dfm}

{-----------------------------FUNCTIONS & PROCEDURES---------------------------}
// Mouse Wheel
procedure HandleScrollBoxMouseWheel(ScrollBox: TScrollBox; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
const
  ScrollAmount = 35; // Adjust this value to control the scroll speed
begin
  // Scroll up
  if WheelDelta > 0 then
  begin
    if ScrollBox.VertScrollBar.Position - ScrollAmount < 0 then
      ScrollBox.VertScrollBar.Position := 0
    else
      ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position -
        ScrollAmount;
  end;

  // Scroll down
  if WheelDelta < 0 then
  begin
    if ScrollBox.VertScrollBar.Position + ScrollAmount >
      ScrollBox.VertScrollBar.Range then
      ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Range
    else
      ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position +
        ScrollAmount;
  end;

  // Indicate that the event was handled
  Handled := True;
end;

procedure TfrmDCF.ShapeBackgrounds;
begin
  sPhotoDocBac.Width := ScrollBox1.Width - 50;
  sItemizedMonthly.Width := ScrollBox1.Width - 50;
  sListOfNoticesBac.Width := ScrollBox1.Width - 50;
end;

procedure TfrmDCF.DetailsTab;
begin
  pProfile.Visible := True;
  ScrollBox2.Visible := True;
  PageControl2.Visible := False;
end;

procedure TfrmDCF.FASTab;
begin
  pProfile.Visible := False;
  ScrollBox2.Visible := False;
  PageControl2.Visible := True;
end;

procedure TfrmDCF.DPTab;
begin
  pProfile.Visible := False;
  ScrollBox2.Visible := False;
  PageControl2.Visible := False;
end;

procedure TfrmDCF.ComplianceTab;
begin
  gpForm1.Visible := True;
//  sklSection1.Visible := True;
  gpForm2.Visible := False;
  sklSection2.Visible := False;
end;

{------------------------------------FORM--------------------------------------}
procedure TfrmDCF.FormResize(Sender: TObject);
begin
  Self.Caption := 'Height: ' + IntToStr(ClientHeight) + ' ' + 'Width: ' + IntToStr(ClientWidth);

  //-------Form Responsive Settings-------//

  // Details Tab
  pForm.Width := ScrollBox2.Width - 20;

  // FAS Tab
  ShapeBackgrounds;
//  rpMeansOfVer.Width := ScrollBox1.Width - 30;


end;

procedure TfrmDCF.FormShow(Sender: TObject);
begin
  // Shape Color Responsive
  ShapeBackgrounds;
  ClientHeight := 569;
end;

procedure TfrmDCF.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    0: DetailsTab;
    1: FASTab;

  end;
end;

procedure TfrmDCF.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
    0:
  end;
end;

{----------------------------------SCROLLBOX-----------------------------------}
// Mouse Wheel Sender
procedure TfrmDCF.ScrollBoxMouseWheelHandler(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  HandleScrollBoxMouseWheel(TScrollBox(Sender), Shift, WheelDelta,
    MousePos, Handled);
end;

end.
