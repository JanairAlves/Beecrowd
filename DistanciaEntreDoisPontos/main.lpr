program main;
uses
  math, sysutils;

var
  x1, x2, y1, y2, p1, p2: Double;

begin
ReadLn(x1, y1, x2, y2);

p1 := sqr( x2 - x1 );
p2 := sqr( y2 - y1 );

WriteLn(FormatFloat('0.0000', Sqrt( p1 + p2 ) ) );

end.