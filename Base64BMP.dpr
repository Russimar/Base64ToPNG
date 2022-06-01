library Base64BMP;


uses
  System.SysUtils,
  System.Classes,
  uConverte in 'uConverte.pas';

{$R *.res}


function Base64toBMP(const AValue, FileName: WideString): Boolean;
begin
  Result := Converter(AValue, FileName);
end;


exports
  Base64toBMP;

begin
end.
