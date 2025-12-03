program three;
var
  f: file of real;
  num: real;
  position, count: integer;
  sum: real;
begin
  assign(f, 'numbers.dat');
  rewrite(f);
  randomize;
  for position := 1 to 12 do
  begin
     num := random * 100 - 25; 
    write(f, num);
    writeln(position:2, ': ', num:8:2);
  end;
  
  close(f);
  writeln;
  reset(f);
  sum := 0;
  position := 1;
  count := 0;
  
  writeln('Четные позиции:');
  
  while not eof(f) do
  begin
    read(f, num);
    
    if position mod 2 = 0 then  
    begin
      sum := sum + num;
      count := count + 1;
      writeln(position:2, ': ', num:8:2, '  (добавляем)');
    end
    else
    begin
      writeln(position:2, ': ', num:8:2, '  (нечетная)');
    end;
    
    position := position + 1;
  end;
  
  close(f);
  writeln('   Сумма: ', sum:0:2);
  var reportFile: text;
  assign(reportFile, 'sum_report.txt');
  rewrite(reportFile);
 
  writeln(reportFile, 'Сумма элементов с четными номерами');
  writeln(reportFile);
  reset(f);
  position := 1;
  sum := 0;  
  
  while not eof(f) do
  begin
    read(f, num);
    
    if position mod 2 = 0 then
    begin
      sum := sum + num;
      writeln(reportFile,position:2, ': ', num:8:2, '- четное');
    end
    else
    begin
      writeln(reportFile,position:2, ': ', num:8:2);
    end;
    
    position := position + 1;
  end;
  
  close(f);
  
  writeln(reportFile);

  writeln(reportFile, 'Сумма: ', sum:0:2);
  writeln(reportFile, 'Четных позиций: ', position div 2);
  
  close(reportFile);
  writeln;
  var textFile: text;
  assign(textFile, 'numbers.txt');
  rewrite(textFile);
  
  reset(f);
  position := 1;
  
  writeln(textFile, 'Исходный файл чисел:');
  writeln(textFile, '-------------------');
  
  while not eof(f) do
  begin
    read(f, num);
    writeln(textFile, 'Позиция ', position:2, ': ', num:0:2);
    position := position + 1;
  end;
  close(f);
  close(textFile);
  Execute('notepad.exe', 'numbers.txt');
  Execute('notepad.exe', 'sum_report.txt');
  readln;
end.