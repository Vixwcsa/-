program four;
var 
  f, temp: text;
  k, i: integer;
  line: string;
  inserted: boolean;
begin
  write('Введите K: ');
  readln(k);
 
  assign(f, 'text.txt');
  
  if not FileExists('text.txt') then
  begin
    rewrite(f);
    for i := 1 to 10 do
      writeln(f, 'Строка ', i);
    close(f);
  end;
  
  assign(temp, 'temp.txt');
  reset(f);
  rewrite(temp);
  
  i := 1;
  inserted := false;
  while not eof(f) do
  begin
    if (i = k) and not inserted then
    begin
      writeln(temp);  
      inserted := true;
    end;
    
    readln(f, line);
    writeln(temp, line);
    i := i + 1;
  end;
  
  close(f);
  close(temp);
  
  if inserted then
  begin
    DeleteFile('text.txt');
    RenameFile('temp.txt', 'text.txt');
  end
  else
    DeleteFile('temp.txt');
  
  writeln('Файл готов');
  
  Execute('notepad.exe', 'text.txt');
end.