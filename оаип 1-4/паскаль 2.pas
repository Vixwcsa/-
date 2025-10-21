program two;
var a,b,c:integer;
begin
  writeln('введите значение a');
  readln(a);
  b:=a mod 100;
  c:=b div 10;
  writeln('Число десятков равно',c)
end.