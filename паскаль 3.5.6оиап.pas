var
  a: array[1..40] of integer;
  i,j,n: integer;
begin
  randomize;
  n := 20;
  for i := 1 to n do begin
    a[i] := random(21)-10;
    write(a[i]:3);
  end;
  writeln;
  
  i := 1;
  while i <= n do begin
    if a[i] < 0 then begin
      for j := n downto i+1 do a[j+1] := a[j];
      a[i+1] := i; 
      n := n+1;
      i := i+1;     
    end;
    i := i+1;
  end;
  
  for i := 1 to n do write(a[i]:3);
end.