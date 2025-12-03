program seven;
var 
  input, output: text;
  n, sum: int64;
begin
  assign(input, 'z3.in');
  rewrite(input);
  writeln(input, '200');
  close(input);
  reset(input);
  assign(output, 'z3.out');
  rewrite(output);
  
  readln(input, n);
  sum := 0;
  
  if 16 <= n then sum := sum + 16;  
  if 81 <= n then sum := sum + 81; 
  if 625 <= n then sum := sum + 625;  
  if 2401 <= n then sum := sum + 2401;  
  
  writeln(output, sum);
  
  close(input);
  close(output);
  writeln('Для n=', n, ' сумма = ', sum);
  writeln('Результат записан в z3.out');
  Execute('notepad.exe', 'z3.out');
end.