Program five;
uses GraphABC;
var i, centerX, centerY, maxRadius: integer;
begin
  SetWindowSize(600, 600);
  centerX := WindowWidth div 2;
  centerY := WindowHeight div 2;
  maxRadius := Min(centerX, centerY) - 20;
  for i := 20 downto 1 do
  begin
    
    
    SetPenColor(clBlack);
    SetPenWidth(1);
    
    Circle(centerX, centerY, i * (maxRadius div 20));
  end;
end.