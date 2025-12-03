Program one;
var filetext: text;
   a: string;
   i: integer;
begin
  assign(filetext, 'text.txt');  
  rewrite(filetext);
  for i := 1 to 10 do
      writeln(filetext, i);  
  close(filetext);
  
  writeln('Числа записаны в файл');
  reset(filetext);
  for i := 1 to 10 do begin
      readln(filetext, a);    
      writeln(a);             
  end;
  close(filetext);
  
  writeln('Файл "text.txt" создан.');
  Execute('notepad.exe', 'text.txt');
end.