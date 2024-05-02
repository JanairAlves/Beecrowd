program main;
const 
  n: Double = 3.14159;
var 
  area, raio: Double;
  StrArea: String;
begin
// area = n.raio²
Read(raio);
area := n * (raio * raio);
Str(area:0:4, StrArea);
WriteLn('A=', StrArea);
end.