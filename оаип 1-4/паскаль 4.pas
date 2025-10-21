program four;
var a,b: integer;
begin
  writeln('Введите a');
  readln(a);
  if a mod 2=0 then b:=a+2 else b:=a+1;
  Writeln(b);
end.