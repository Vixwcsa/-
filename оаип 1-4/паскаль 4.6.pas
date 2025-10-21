program four;
var m,n,x,y: integer;
begin
  writeln('Введите размер таблицы m,n и клетки с координатами x,y');
  readln(x,y,m,n);
  if x > 1 then
    writeln('(',x-1,';',y,')');
  if x < m then
    writeln('(',x+1,';',y,')');
  if y > 1 then
    writeln('(',x,';',y-1,')');
  if y < n then
    writeln('(',x,';',y+1,')');
end.