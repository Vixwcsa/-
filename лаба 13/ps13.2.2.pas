program twotwo;
var f, f1, f2: file of integer;
  x: integer;
  i: integer;
begin
  assign(f, 'nums.dat');
  rewrite(f);
  
  randomize;
  for i := 1 to 12 do
  begin
    x := random(25);  
    write(f, x);
  end;
  close(f);
  
  reset(f);
  assign(f1, 'nechet.dat');  
  assign(f2, 'chet.dat');    
  rewrite(f1);
  rewrite(f2);
  
  i := 1;
  while not eof(f) do
  begin
    read(f, x);
    if i mod 2 = 1 then
      write(f1, x)    
    else
      write(f2, x);  
    i := i + 1;
  end;
  
  close(f);
  close(f1);
  close(f2);
  
  var t1, t2, t3: text;
  
  assign(t1, 'nums.txt'); rewrite(t1);
  assign(t2, 'nechet.txt'); rewrite(t2);
  assign(t3, 'chet.txt'); rewrite(t3);
  
  reset(f); 
  i := 1;
  while not eof(f) do
  begin
    read(f, x);
    writeln(t1, i, ': ', x);
    i := i + 1;
  end;
  close(f);
  close(t1);
  
  reset(f1); 
  i := 1;
  while not eof(f1) do
  begin
    read(f1, x);
    writeln(t2, 'Нечетная позиция ', i*2-1, ': ', x);
    i := i + 1;
  end;
  close(f1);
  close(t2);
  reset(f2); 
  i := 1;
  while not eof(f2) do
  begin
    read(f2, x);
    writeln(t3, 'Четная позиция ', i*2, ': ', x);
    i := i + 1;
  end;
  close(f2);
  close(t3);
  
  Execute('notepad.exe', 'nums.txt');
  Execute('notepad.exe', 'nechet.txt');
  Execute('notepad.exe', 'chet.txt');
end.