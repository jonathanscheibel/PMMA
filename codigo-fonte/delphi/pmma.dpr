program pmma;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uLogin in 'formularios\uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
