unit uConverte;

interface

uses
  System.NetEncoding;

function Converter(AValue, FileName: WideString): Boolean;

implementation

uses
  System.Classes,
  System.SysUtils;

function Converter(AValue, FileName: WideString): Boolean;
var
  BStream: TBytesStream;
  PathFile : String;
begin
  BStream := TBytesStream.Create(TNetEncoding.Base64.DecodeStringToBytes(AValue));
  try
    try
      PathFile := ExtractFilePath(ParamStr(0)) + 'Image';
      if not (DirectoryExists(PathFile)) then
        CreateDir(PathFile);
      BStream.SaveToFile(PathFile + '/' + FileName);
      Result := True;
    finally
      BStream.Free;
    end;
  except
    Result := False;
  end;
end;

end.
