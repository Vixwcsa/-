program two;
var f1, f2: text;
  s: string;
  max, i: integer;
  arr: array[1..100] of string;
  n: integer;
begin
  assign(f1, 'input.txt');
  rewrite(f1);
  writeln(f1, 'lala');
  writeln(f1, 'fe');
  writeln(f1, 'wow');
  writeln(f1, 'gooooo');
  writeln(f1, 'bebebe');
  writeln(f1, 'numnumnumnum');
  close(f1);
  reset(f1);
  n := 0;
  max := 0;
  
  while not eof(f1) do
  begin
    n := n + 1;
    readln(f1, arr[n]);
    if Length(arr[n]) > max then
      max := Length(arr[n]);
  end;
  close(f1);
  
  assign(f2, 'output.txt');
  rewrite(f2);
  
  for i := n downto 1 do
    if Length(arr[i]) = max then
      writeln(f2, arr[i]);
  
  close(f2);
  
  Execute('notepad.exe', 'input.txt');
  Execute('notepad.exe', 'output.txt');
end.