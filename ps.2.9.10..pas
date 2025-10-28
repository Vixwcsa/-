program two;
var
  arr: array[1..8, 1..8] of integer;
  res: array[1..8] of integer;
  i, j, max_val, cnt: integer;
begin
  randomize;
  writeln('Двумерный массив:');
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      arr[i, j] := random(50) + 1;
      write(arr[i, j]:3);
    end;
    writeln;
  end;
  for i := 1 to 8 do
  begin
    max_val := 0;
    cnt := 0;
    for j := 1 to 8 do
      if arr[i, j] > max_val then
        max_val := arr[i, j];
    for j := 1 to 8 do
      if arr[i, j] = max_val then
        cnt := cnt + 1;
    if cnt = 1 then res[i] := 1
    else res[i] := -1;
  end;
  writeln;
  write('Результат: [');
  for i := 1 to 8 do
  begin
    write(res[i]);
    if i < 8 then write(', ');
  end;
  writeln(']');
end.
