unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    btnEntrar: TButton;
    Button1: TButton;
    procedure btnEntrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uPrincipal, uAtualizar;

{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  frmPrincipal.Show;
  frmLogin.Visible := False;
end;

procedure TfrmLogin.Button1Click(Sender: TObject);
var FileOnNet, LocalFileName: string;
begin
  FileOnNet:='https://raw.githubusercontent.com/jonathanscheibel/PMMA/main/pmma.exe?token=AB3ULWV5UZJVK5MK6CKIEYTBVAMI2';
  LocalFileName:='C:\Users\Jonathan\Downloads\pmma.exe';

  if GetInetFile(FileOnNet,LocalFileName)=True then
  ShowMessage('Download successful')
  else
  ShowMessage('Error in file download')

end;



end.
