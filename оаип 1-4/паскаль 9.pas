program devat;
var a1, b1, c1, a2, b2, c2, u, x, y: real;
begin
  readln(a1, b1, c1, a2, b2, c2);
  u := a1 * b2 - a2 * b1;
  x := (c1 * b2 - c2 * b1) / u;
  y := (a1 * c2 - a2 * c1) / u;
  writeln(x:0:2, ' ', y:0:2);
end.