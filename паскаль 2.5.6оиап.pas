var
  a: array[1..20] of integer;
  i, j, k, m, n: integer;
begin
  randomize;
  for i := 1 to 20 do
  begin
    a[i] := random(10) + 1;
    write(a[i], ' ');
  end;
  writeln;
  
  m := 0; n := a[1];
  
  for i := 1 to 20 do
  begin
    k := 0;
    for j := 1 to 20 do
      if a[j] = a[i] then k := k + 1;
    if k > m then begin m := k; n := a[i]; end;
  end;
  
  writeln('Число ', n, ' встречается ', m, ' раз');
end.