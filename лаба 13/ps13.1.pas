program one;
var f, t: file of char;
  ch: char;
  i, last, sz: integer;
begin
  assign(f, 'chars.dat');
  rewrite(f);
  var s := 'Lalalala bebebe numnumnum';
  for i := 1 to Length(s) do
    write(f, s[i]);
  close(f);
  
  reset(f);
  sz := FileSize(f);
  last := -1;
  for i := 0 to sz - 1 do
  begin
    seek(f, i);
    read(f, ch);
    if ch = ' ' then last := i;
  end;
  assign(t, 'temp.dat');
  rewrite(t);
  for i := 0 to last - 1 do
  begin
    seek(f, i);
    read(f, ch);
    write(t, ch);
  end;
  
  close(f);
  close(t);
  
  DeleteFile('chars.dat');
  RenameFile('temp.dat', 'chars.dat');
  Execute('notepad.exe', 'chars.dat');
end.