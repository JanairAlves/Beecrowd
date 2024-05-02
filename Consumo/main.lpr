program main;
uses
sysutils;

var
km: Integer;
gastoCombustivel: Double;

begin
ReadLn(km, gastoCombustivel);
WriteLn(FormatFloat('0.000', km / gastoCombustivel) , ' km/l');
  
end.