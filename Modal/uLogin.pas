unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uDataMod;

type
  TfrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    imgMCS: TImage;
    imgLock: TImage;
    edUserName: TEdit;
    edPassword: TEdit;
    btLogin: TButton;
    btnOpenDb: TButton;
    chckShowpass: TCheckBox;
    imgHeader: TImage;
    procedure chckShowpassClick(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btLoginClick(Sender: TObject);
var
  pwd: string;
begin
//  if trim(edUserName.Text) = '' then    // if empty
//  begin
//    ShowMessage('Please enter user name!');
//    edUserName.SetFocus;
//  end
//  else
//  begin
//    // validate the username and password
//    with dm do
//    begin
//      conSGLGB.Open;
//      qTemp.SQL.Clear;
//      qTemp.SQL.Text := 'Select * From Users Where username=' + QuotedStr(edUserName.Text);
//      qTemp.Open;
//
//      // checking if the username is in the database
//      if qTemp.RecordCount > 0 then
//      begin
//        // check if the user is active
//        if qTemp.FieldByName('is_active').AsBoolean then
//        begin
//          pwd := qTemp.FieldByName('password').AsString;
//          if pwd = edPassword.Text then
//          begin
//            // update user last login
//            qTemp.Edit;
//            qTemp.FieldByName('last_login').AsDateTime := Now;
//            qTemp.Post;
//            qTemp.Refresh;
//
//            // show Main form
//            frmLogin.Tag := 1; // logged
//            dm.User.id := qTemp.FieldByName('id').asInteger;
//            dm.User.username := qTemp.FieldByName('username').AsString;
//            dm.User.isAdmin := ((qTemp.FieldByName('is_admin').AsString = '1') or (LowerCase(qTemp.FieldByName('is_admin').AsString) = 'true'));
//            dm.User.isActive := ((qTemp.FieldByName('is_active').AsString = '1') or (LowerCase(qTemp.FieldByName('is_active').AsString) = 'true'));
//
//            qTemp.Close;
//            frmLogin.close;
//          end
//          else
//          begin
//            ShowMessage('Incorrect Password!');
//          end;
//        end
//        else
//        begin
//          ShowMessage('User is not active!');
//        end;
//      end
//      else
//      begin
//        // user does not exist
//        ShowMessage('Username not valid!');
//      end;
//    end;
//  end;
end;

procedure TfrmLogin.chckShowpassClick(Sender: TObject);
begin
  if chckShowpass.Checked then
    edPassword.PasswordChar := #0  // Show password
  else
    edPassword.PasswordChar := '*'; // Hide password
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) or (Key = 27) then
  begin
//    btLoginClick(Sender);
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edUserName.Text := 'admin';
  edPassword.Text := 'admin@123';
end;

end.
