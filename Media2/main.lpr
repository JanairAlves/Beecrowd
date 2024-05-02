program main;
var 
A, B, C, MEDIA: Double;
strMedia: String;
begin
Read(A);
Read(B);
Read(C);
MEDIA := ( (A * 2) + (B * 3) + (C * 5) ) / 10;
Str(MEDIA:0:1, strMedia);
WriteLn('MEDIA = ', strMedia);
end.