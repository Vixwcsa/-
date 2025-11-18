Program four;
uses GraphABC;
var i, x: integer;
begin
  SetWindowSize(400, 300);
  x := 50;
  while x <= 290 do
  begin
    SetBrushColor(RGB(Random(256), Random(256), Random(256)));
    SetPenColor(clBlack);
    
    Circle(x, 100, 10);
    x := x + 30;
  end;
end.