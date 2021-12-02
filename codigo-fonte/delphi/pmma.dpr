program pmma;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uLogin in 'formularios\uLogin.pas' {frmLogin},
  uAtualizar in 'unidades\uAtualizar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
