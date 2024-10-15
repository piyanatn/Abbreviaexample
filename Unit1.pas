unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.zip,AbArcTyp, AbUtils, AbZipper ,AbUnZper, AbZipTyp;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    FileOpenDialog1: TFileOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Button4: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Button5: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   if FileOpenDialog1.Execute then
    begin
      Edit1.Text :=  FileOpenDialog1.FileName;
      Edit2.Text :=  ExtractFilePath(FileOpenDialog1.FileName);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  zipFile :TZipFile;
  filename,Extractdir : String;
  AbUnZip : TAbUnZipper;
begin
  AbUnZip := TAbUnZipper.Create(nil);
  try
    AbUnZip.FileName := Edit1.Text;
    // Clean out old Directory and create a new one.
    Extractdir := Edit2.Text;

    CreateDir(ExtractDir);
    // Extract Files.
    AbUnZip.BaseDirectory := ExtractDir;
    AbUnZip.ExtractFiles('*.*');
    // Compare Extracted Files
  finally
    AbUnZip.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   if FileOpenDialog1.Execute then
    begin
      Edit5.Text :=  FileOpenDialog1.FileName;
      Edit6.Text :=  ExtractFilePath(FileOpenDialog1.FileName);
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  zipFile :TZipFile;
  filename : String;
  Component : TAbZipper;
begin
 zipFile := TZipFile.Create;
  try
    Component := TAbZipper.Create(nil);
    Component.BaseDirectory := 'D:\Zip\';
    Component.FileName := 'D:\Zip\AddZipDelphi.zip';
    Component.AddFiles(Edit3.Text,faAnyFile);
    Component.AddFiles(Edit4.Text,faAnyFile);
    Component.Password := 'IamGroot' ;
    Component.StoreOptions := [];
    Component.Save;
    Component.CloseArchive;


  finally
    zipFile.Free;
    Component.Free;

  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  zipFile :TZipFile;
  filename,Extractdir : String;
  AbUnZip : TAbUnZipper;
begin
  AbUnZip := TAbUnZipper.Create(nil);
  try
    AbUnZip.FileName := Edit5.Text;
    // Clean out old Directory and create a new one.
    Extractdir := Edit6.Text;

    CreateDir(ExtractDir);
    // Extract Files.
    AbUnZip.BaseDirectory := ExtractDir;
    AbUnZip.Password := Edit7.Text  ;
    AbUnZip.ExtractFiles('*.*');
    // Compare Extracted Files
  finally
    AbUnZip.Free;
  end;
end;

end.
