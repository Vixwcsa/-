program pr_8;
var x1, x2, y1, y2, x3, y3: real;
begin
writeln ('Введите x1, y1, x2, y2');
readln (x1, y1, x2, y2);
x3:= (x1+x2)/2;
y3:= (y1+y2)/2;
writeln ('(',x3,';',y3,')');
end.