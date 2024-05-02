program main;
var
  A, B, MEDIA: Double;
  StrMEDIA: String;
begin
Read(A);
Read(B);
MEDIA := (A * 3.5 + B * 7.5) / 11;
Str(MEDIA:0:5, StrMEDIA);
WriteLn('MEDIA = ', StrMEDIA);  
end.