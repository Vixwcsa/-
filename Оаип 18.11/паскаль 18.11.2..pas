Program three;
uses graphABC;
begin
  SetWindowSize(700,400);
  Pen.Width:=0;
  line(150,400,570,400);
  
  Line(230,400,350,40); Line(470,400,350,40);
  FloodFill(350,200,RGB(255,0,0));
  Brush.Color:=RGB(255,0,0);
  Circle(350,40,30);
  
  Line(420,250,659,75); Line(570,400,659,75);
  FloodFill(430,250,RGB(0,255,0));
  Brush.Color:=RGB(0,255,0);
  Circle(659,75,30);
 
  Line(150,400,40,75); Line(280,250,40,75);
  FloodFill(160,250,RGB(0,0,255));
  Brush.Color:=RGB(0,0,255);
  Circle(40,75,30); 
end.