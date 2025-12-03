Program three;
var f: text;
  s: string;
begin
  write('Введите строку S: ');
  readln(s);
  
  assign(f, 'text.txt');  
  append(f);  
  writeln(f, s);
  close(f);

  writeln('Строка добавлена в файл: "', s, '"');
  
  Execute('notepad.exe', 'text.txt');
end.