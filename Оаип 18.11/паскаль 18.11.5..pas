Program six;
uses GraphABC;
begin
  SetWindowSize(600, 300);
  for var i := 0 to 7 do
  begin
    var radius := 10 + i * 15; 
    var x_pos := 40 + i * 60;  
    var y_pos := 150;          
    case i of
      0: SetBrushColor(clBlack);
      1: SetBrushColor(clPurple);
      2: SetBrushColor(clTeal);
      3: SetBrushColor(clRed);
      4: SetBrushColor(clPink);
      5: SetBrushColor(clBlue);
      6: SetBrushColor(clNavy);
      7: SetBrushColor(clGreen);
    end;
    FillCircle(x_pos, y_pos, radius);
  end;
end.