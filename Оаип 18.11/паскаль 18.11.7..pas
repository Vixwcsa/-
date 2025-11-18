Program eight;
uses GraphABC;
var x, y: integer;
begin
  SetWindowSize(800, 600);
  SetPenColor(clBlack);
  MoveTo(100, 400);
  LineTo(400, 100);
  LineTo(700, 400);
  x := 100;
  y := 400;
  while x <= 700 do
  begin
    ClearWindow;
    SetPenColor(clBlack);
    MoveTo(100, 400);
    LineTo(400, 100);
    LineTo(700, 400);
    SetPenColor(clBlack);
    SetBrushColor(clBlack);
    Rectangle(x - 10, y - 10, x + 10, y + 10);
    if x < 400 then
    begin
      x := x + 2;
      y := y - 2;
    end
    else
    begin
      x := x + 2;
      y := y + 2;
    end;
    
    Sleep(10);
  end;
end.