//Найти произведение цифр заданного натурального числа N.
program one; 
var N, P, a: integer;
begin
  write('Введите N: ');
  readln(N);
  P := 1;
    while N <> 0 do
  begin
    a := N mod 10;
    P := P * a;
    N := N div 10;
  end;
  
  writeln('Произведение цифр: ', P);
end.