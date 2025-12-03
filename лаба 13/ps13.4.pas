program Four;
var f: file of real;
  nums: array[1..10] of real;
  i, maxPos: integer;
begin
  randomize;
  writeln('10 чисел:');
  
  assign(f, 'numbers.dat');
  rewrite(f);
  
  for i := 1 to 10 do
  begin
    nums[i] := random * 50;
    write(f, nums[i]);
    writeln(i:2,'.', nums[i]:6:2);
  end;
  close(f);
 
  maxPos := 0;
  
  for i := 2 to 9 do  
  begin
    if (nums[i] > nums[i-1]) and (nums[i] > nums[i+1]) then
      maxPos := i;
  end;
  
  writeln;
  
  if maxPos > 0 then
  begin
    writeln('Последний локальный максимум:');
    writeln('  Позиция: ', maxPos);
    writeln('  Значение: ', nums[maxPos]:0:2);
  end
  else
    writeln('Локальных максимумов нет');
  
  var t: text;
  assign(t, 'result.txt');
  rewrite(t);
  
  writeln(t, 'Числа:');
  for i := 1 to 10 do
    writeln(t, i:2, '.', nums[i]:6:2);
  
  writeln(t);
  
  if maxPos > 0 then
    writeln(t, 'Максимум на поз. ', maxPos, ' = ', nums[maxPos]:0:2)
  else
    writeln(t, 'Максимумов нет');
  
  close(t);
  
  Execute('notepad.exe', 'result.txt');
end.