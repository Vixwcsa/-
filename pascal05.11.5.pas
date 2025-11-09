program five;
var
    n, i, a, x, s, P: integer;
    found: boolean;
begin
    write('Введите количество чисел: ');
    readln(n);
    
    P := 1;
    found := false;
    
    for i := 1 to n do
    begin
        write('Введите число ', i, ': ');
        readln(a);
        if a > 0 then  
        begin
            s := 0;
            for x := 1 to a div 2 do
            begin
                if a mod x = 0 then
                    s := s + x;
            end;
            if s = a then
            begin
                P := P * a;
                found := true;
                writeln('Найдено совершенное число: ', a);
            end;
        end;
    end;
    
    if not found then
        writeln('Нет совершенных чисел')
    else
        writeln('Произведение совершенных чисел: ', P);
end.