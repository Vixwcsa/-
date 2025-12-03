program fivetwo;
var 
  f: file of char;
  ch: char;
begin
  assign(f, 'data.dat');
  rewrite(f);
  for var i := 1 to 9 do
    write(f, chr(ord('0') + i));
  close(f);
  reset(f);
  
  for var i := 0 to FileSize(f) - 1 do
    if i mod 2 = 0 then  // 0, 2, 4, 6, 8
    begin
      seek(f, i);
      write(f, '!');
    end;
  
  close(f);
  writeln('Результат:');
  reset(f);
  while not eof(f) do
  begin
    read(f, ch);
    write(ch, ' ');
  end;
  close(f);
  writeln;
  writeln;
  var t: text;
  assign(t, 'result.txt');
  rewrite(t);
  
  reset(f);
  for var i := 0 to FileSize(f) - 1 do
  begin
    seek(f, i);
    read(f, ch);
    writeln(t, i:2, ': ', ch);
  end;
  
  close(f);
  close(t);
  Execute('notepad.exe', 'result.txt');
end.