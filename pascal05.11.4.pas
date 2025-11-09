//Для N введенных чисел определить, сколько среди них простых чисел.
program three;
var N, i, k, y, x, c: integer;
begin
  write('Введите N: ');
  readln(N);
  i := 1;
  k := 0;
  while i <= N do
  begin
    write('Введите число: ');
    readln(y);
    x := 1;
    c := 0;
    while x <= y do
    begin
      if y mod x = 0 then
        c := c + 1;
      x := x + 1;
    end;
    if c = 2 then
      k := k + 1;
    i := i + 1;
  end;
  writeln('Количество простых чисел: ', k);
end. 