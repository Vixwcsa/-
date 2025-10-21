program z;
var
  a: array[1..20] of integer;
  i, k, p, s, x, y: integer;
begin
  randomize;
  
  for i := 1 to 20 do
  begin
    a[i] := random(116) - 22;
    write(a[i], ' ');
  end;
  writeln;
  
  k := 0;
  for i := 1 to 20 do
    if (i mod 2 = 1) and (a[i] mod 2 = 0) then k := k + 1;
  writeln('Четные на нечетных местах: ', k);
  
  p := 1;
  for i := 1 to 20 do
    if a[i] mod 2 = 1 then p := p * a[i];
  writeln('Произведение нечетных:', p);
  
  write('Введите начало и конец промежутка:');
  read(x, y);
  s := 0;
  for i := 1 to 20 do
    if (a[i] >= x) and (a[i] <= y) then s := s + a[i];
  writeln('s = ', s);
end.