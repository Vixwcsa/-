program two;
var s: string;
begin
  write('Введите строку: ');
  readln(s);
  if copy(s, 1, 3) = 'abc' then
    s := 'www' + copy(s, 4, length(s) - 3)
  else
    s := s + 'zzz';
    
  writeln('Результат: ', s);
end.