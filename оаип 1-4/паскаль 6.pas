program six;
var a,b,c,p,S,u: real;
begin
  writeln('Введите a,b,c');
  readln(a,b,c);
  p:=(a+b+c)/2;
  S:=p*(p-a)*(p-b)*(p-c);
  u:=sqrt(S);
  u:=round(u*100)/100;
  writeln(u);
end.