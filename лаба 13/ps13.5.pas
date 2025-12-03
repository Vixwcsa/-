program five;
var f: file of real;
  i, minP, maxP: integer;
  x, min, max: real;
begin
  randomize;
  
  assign(f, 'data.dat');
  rewrite(f);
  for i := 1 to 6 do
  begin
    x := random * 30;
    write(f, x);
    write(x:5:1, ' ');
  end;
  writeln;
  writeln;
  
  close(f);
  reset(f);
  read(f, x);
  min := x; max := x;
  minP := 1; maxP := 1;
  
  i := 1;
  while not eof(f) do
  begin
    read(f, x);
    i := i + 1;
    if x < min then begin min := x; minP := i; end;
    if x > max then begin max := x; maxP := i; end;
  end;
  close(f);
  
  writeln('минимум:', minP, ': ', min:0:1);
  writeln('максимум:', maxP, ': ', max:0:1);
  writeln;
  
  var temp: file of real;
  assign(temp, 'temp.dat');
  
  reset(f);
  rewrite(temp);
  
  i := 1;
  while not eof(f) do
  begin
    read(f, x);
    if i = minP then write(temp, max)
    else if i = maxP then write(temp, min)
    else write(temp, x);
    i := i + 1;
  end;
  
  close(f);
  close(temp);
  
  DeleteFile('data.dat');
  RenameFile('temp.dat', 'data.dat');
  
  writeln('После замены:');
  reset(f);
  while not eof(f) do
  begin
    read(f, x);
    write(x:5:1, ' ');
  end;
  close(f);
  
  var txt: text;
  assign(txt, 'result.txt');
  rewrite(txt);
  
  reset(f);
  i := 1;
  while not eof(f) do
  begin
    read(f, x);
    writeln(txt, i, ') ', x:0:2);
    i := i + 1;
  end;
  
  close(f);
  close(txt);

  writeln;
  Execute('notepad.exe', 'result.txt');
end.