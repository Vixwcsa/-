Program two;
var f: text;
  n, k, i, j: integer;
  filename: string;
begin
  write('Введите N (количество строк): ');
  readln(n);
  write('Введите K (количество звездочек в строке): ');
  readln(k);
  filename := 'text.txt';  
  
  assign(f, filename);
  rewrite(f); 
  for i := 1 to n do
  begin
    for j := 1 to k do
      write(f, '*');
    writeln(f);
  end;
  
  close(f);
  
  writeln('Файл содержит ', n, ' строк по ', k, ' звездочек');
end.