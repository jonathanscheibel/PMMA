unit uAtualizar;

interface

procedure atualizar();

implementation

uses Wininet, SysUtils, Windows, Forms, Classes;

function GetInetFile(const fileURL, FileName: String): boolean;
const BufferSize = 1024;
var hSession, hURL: HInternet;
Buffer: array[1..BufferSize] of Byte;
BufferLen: DWORD;
f: File;
sAppName: string;
begin
Result:=False;
sAppName := ExtractFileName(Application.ExeName);
hSession := InternetOpen(PChar(sAppName), INTERNET_OPEN_TYPE_PRECONFIG,
nil, nil, 0);
try
hURL := InternetOpenURL(hSession,
PChar(fileURL),nil,0,0,0);
try
AssignFile(f, FileName);
Rewrite(f,1);
repeat
InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
BlockWrite(f, Buffer, BufferLen)
until BufferLen = 0;
CloseFile(f);
Result:=True;
finally
InternetCloseHandle(hURL)
end
finally
InternetCloseHandle(hSession)
end
end;

const
  NAME_BAT = 'atualizacao.bat';
  
function getNomeArquivoDeLote(): String;
begin
  Result := ExtractFilePath(Application.ExeName) + NAME_BAT;
end;

procedure criarArquivoDeLote();
var
  arquivo : TStringList;
begin
  arquivo := TStringList.Create();
  try
    arquivo.Add('timeout 5');
    arquivo.Add('cd C:\Program Files (x86)\PMMA\PMMA');
    arquivo.Add('del "C:\Program Files (x86)\PMMA\PMMA\pmma.exe" /Q');
    arquivo.Add('ren "pmma.tmp" "pmma.exe"');
    arquivo.Add('start pmma.exe');
    arquivo.Add('del ' + NAME_BAT + ' /Q');
    arquivo.SaveToFile(getNomeArquivoDeLote());
  finally
    FreeAndNil(arquivo);
  end;
end;

procedure baixarArquivo();
var
  FileOnNet, LocalFileName: string;
begin
  FileOnNet:='https://raw.githubusercontent.com/jonathanscheibel/PMMA/main/pmma.exe';
  LocalFileName:='C:\Program Files (x86)\PMMA\PMMA\pmma.tmp';

  if GetInetFile(FileOnNet,LocalFileName) then
    begin
      criarArquivoDeLote();
      WinExec('Atualizacao.bat', SW_SHOW);
      Application.Terminate;
    end;
end;

procedure atualizar();
begin
  baixarArquivo();
end;

initialization
  if not FileExists(getNomeArquivoDeLote()) then
    atualizar();
  
end.
