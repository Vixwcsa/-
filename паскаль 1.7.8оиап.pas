program one;
var s: string;
var i, n: integer;
begin
  write('Введите строку: ');
  readln(s);
  
  n := length(s); 
  
  if n > 5 then
  begin
    writeln('Первые три символа: ', copy(s, 1, 3));
    writeln('Последние три символа: ', copy(s, n - 2, 3));
  end
  else
  begin
    write('Результат: ');
    for i := 1 to n do
    begin
      write(s[1]);  
    end;
    writeln; 
  end;
end.