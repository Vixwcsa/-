program one;
var
  x, y, i, sum1, sum2: integer;
  lst: array[1..100] of integer;
  tpm: array[1..100] of integer;
begin
  randomize;
  
  write('Введите размер списка 1: ');
  readln(x);
  for i := 1 to x do
    lst[i] := random(21) - 10;
  
  write('Введите размер списка 2: ');
  readln(y);
  for i := 1 to y do
    tpm[i] := random(21) - 10;
  
  write('Массив 1: ');
  for i := 1 to x do
    write(lst[i], ' ');
  writeln;
  
  write('Массив 2: ');
  for i := 1 to y do
    write(tpm[i], ' ');
  writeln;
  
  sum1 := 0;
  sum2 := 0;
  
  for i := 1 to x do
    if lst[i] > 0 then
      sum1 := sum1 + lst[i];
      
  for i := 1 to y do
    if tpm[i] > 0 then
      sum2 := sum2 + tpm[i];
  
  if sum1 > sum2 then
  begin
    for i := 1 to y do
      tpm[i] := tpm[i] * 10;
    writeln('Умножили второй массив');
  end
  else if sum1 < sum2 then
  begin
    for i := 1 to x do
      lst[i] := lst[i] * 10;
    writeln('Умножили первый массив');
  end
  else
    writeln('Суммы равны');
  
  write('Массив 1: ');
  for i := 1 to x do
    write(lst[i], ' ');
  writeln;
  
  write('Массив 2: ');
  for i := 1 to y do
    write(tpm[i], ' ');
  writeln;
end.