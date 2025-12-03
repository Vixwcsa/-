program six;
var f1, f2: text;
  line, resultLine: string;
  position: integer;
begin
  assign(f1, 'F1.txt');
 
  if not FileExists('F1.txt') then
  begin
    rewrite(f1);
    writeln(f1, '101010101');
    writeln(f1, '111000111');
    writeln(f1, '101101101');
    writeln(f1, '000101000');
    writeln(f1, '101');
    writeln(f1, '1');
    writeln(f1, '0');
    writeln(f1, '1010');
    close(f1);
    reset(f1);  
  end
  else
    reset(f1); 
  
  assign(f2, 'F2.txt');
  rewrite(f2);
  
  writeln('Преобразование "101" -> "000":');
  
  while not eof(f1) do
  begin
    readln(f1, line);
    resultLine := line;
    
    position := Pos('101', resultLine);
    while position > 0 do
    begin
      Delete(resultLine, position, 3);
      Insert('000', resultLine, position);
      position := Pos('101', resultLine);
    end;
    
    writeln(f2, resultLine);
    writeln(line, ' -> ', resultLine);
  end;
  
  close(f1);
  close(f2);
  
  
  writeln('Результат записан в F2.txt');
  
  Execute('notepad.exe', 'F2.txt');
end.