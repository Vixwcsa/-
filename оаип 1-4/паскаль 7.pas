program seven;
var r,V,u: real;
begin
  writeln('Введите радиус r');
  readln(r);
  V:= 4/3*3.14*r*r*r;
  u:=sqrt(V);
  u:=round(u*100)/100;
  writeln(u);
end.