 uses GraphABC;
begin
  SetPenColor(clBlack);
  SetBrushColor(clRed);
  Circle(50, 200, 50);
  
  SetPenColor(clBlack);
  SetBrushColor(clYellow);
  Circle(450, 200, 50);
  
  SetPenColor(clBlack);
  MoveTo(100, 200);
  LineTo(400, 200);
  LineTo(250, 100);
  LineTo(100, 200);
  
  SetBrushColor(clBlack);
  FloodFill(250, 150, clBlue);
  SetPenColor(clBlack);
  MoveTo(100, 200);
  LineTo(400, 200);
  LineTo(250, 300);
  LineTo(100, 200);
  SetBrushColor(clBlack);
  FloodFill(250, 250, clGreen);
end.