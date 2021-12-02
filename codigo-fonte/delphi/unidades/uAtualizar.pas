unit uAtualizar;

interface

function DownloadFile(SourceFile, DestFile: string): Boolean;

implementation

uses UrlMon, SysUtils;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile),
      0, nil) = 0;
  except
    on e: Exception do
      begin
        raise Exception.Create(e.Message);
        Result := False;
      end;
  end;
end;

end.
