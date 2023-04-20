Flag F1 = new Flag (20,30);
Flag F2 = new Flag (50,35);

void setup()
{
  size(1080,1080);
  colorMode(RGB);
  frameRate(30);
  
}

void draw()

{
  F1.update();
  F2.update();
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
class Flag {
   float ypos, speed; 
  Flag (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 
