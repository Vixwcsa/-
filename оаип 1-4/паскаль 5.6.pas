program five;
var R1,R2,R3:real;
begin
  writeln('Введите радиус дачи R1, радиус одного НЛО R2, радиус второго НЛО R3');
  readln(R1, R2, R3);
  if R2 + R3 <= R1 then
    writeln('True')
  else
    writeln('False');
end.