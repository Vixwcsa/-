program five;
var 
  f, temp: text;
  k, lineNum, totalLines: integer;
  currentLine: string;
begin
  write('Введите K: ');
  readln(k);
  
  if k < 1 then
  begin
    writeln('Ошибка: K должно быть >= 1');
    exit;
  end;
  
  assign(f, 'text.txt');
  
  if not FileExists('text.txt') then
  begin
    
    rewrite(f);
    for lineNum := 1 to 5 do
      writeln(f, lineNum-1, 'line');
    close(f);
  end;
  
  reset(f);
  totalLines := 0;
  while not eof(f) do
  begin
    readln(f, currentLine);
    totalLines := totalLines + 1;
  end;
  reset(f);  
  
  if k > totalLines then
  begin
    writeln('Строка ', k, ' не существует. В файле только ', totalLines, ' строк.');
    close(f);
    exit;
  end;
  
  assign(temp, 'temp.txt');
  rewrite(temp);
  
  lineNum := 1;
  
  while not eof(f) do
  begin
    readln(f, currentLine);
    
    if lineNum <> k then
      writeln(temp, currentLine);
    
    lineNum := lineNum + 1;
  end;
  
  close(f);
  close(temp);
  
  DeleteFile('text.txt');
  RenameFile('temp.txt', 'text.txt');
  
  writeln('строка ', k, ' удалена');
  writeln('в файле ', totalLines - 1, ' строк');
 
  Execute('notepad.exe', 'text.txt');
end.