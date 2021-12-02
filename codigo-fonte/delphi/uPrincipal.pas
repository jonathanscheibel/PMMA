unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus, ComCtrls, StdCtrls, Buttons;

type
  TfrmPrincipal = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    pnlTopo: TPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    pcCadastro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure Cadastro2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  cc : integer = -1;
  Colors1: array[0..19] of TColor;
  
implementation

{$R *.dfm}

procedure TfrmPrincipal.Cadastro2Click(Sender: TObject);
begin
  pcCadastro.Visible := not pcCadastro.Visible;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Application.Terminate;
end;

end.
