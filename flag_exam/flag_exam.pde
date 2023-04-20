void setup()
{
  size(1080,1080);
  colorMode(RGB);
  
}

void draw()

{
  //rectangle part of the flag red yellow green blue dark blue purple
  strokeWeight(0);
  fill(250,10,10);
  rect(300,0, 330, 50);
  
   strokeWeight(0);
  fill(241,250,10);
  rect(300,50, 330, 50);
  
  strokeWeight(0);
  fill(7,247,49);
  rect(300,100, 330, 50);
  
  strokeWeight(0);
  fill(7,247,213);
  rect(300,150, 330, 50);
  
  strokeWeight(0);
  fill(7,13,247);
  rect(300,200, 330, 50);
    
  strokeWeight(0);
  fill(235,7,247);
  rect(300,250, 330, 50);
  
  //Triangles Black Brown Pink Yellow 
  strokeWeight(0);
  fill(13,11,13);
  triangle(450, 150,300 , 0, 300, 300);
  
   strokeWeight(0);
  fill(118,73,0);
  triangle(420, 150,300 , 0, 300, 300);
  
    strokeWeight(0);
  fill(245,141,214);
  triangle(390, 150,300 , 0, 300, 300);
  
    strokeWeight(0);
  fill(243,255,111);
  triangle(360, 150,300 , 0, 300, 300);
  
  // purple circle
  strokeWeight(10);
  stroke(180, 47, 247);
  noFill();
  circle(350, 150, 50);
  
}
