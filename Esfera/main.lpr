program main;
Const pi:   Double =   3.14159;
var
  raio, volumeEsfera: Double;
  strVolumeEsfera: String;

function cubo(valor: Double): Double;
begin
  cubo := valor * valor * valor;
end;

begin
ReadLn(raio);

volumeEsfera := (4.0/3) * pi * cubo(raio);
Str(volumeEsfera:0:3, strVolumeEsfera);

WriteLn('VOLUME = ', strVolumeEsfera);
end.