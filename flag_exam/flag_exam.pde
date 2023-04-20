Flag F1 = new Flag (20,30);
Flag F2 = new Flag (50,35);
//Module M1 = new Module (0,0);
ArrayList <flag> flag;
int flagWidth = 50;


//int unit = 40;
//int count ;
//Module[] mods;

void setup()
{
  size(1080,1080);
  colorMode(RGB);
  frameRate(30);
  flag = new ArrayList<flag>();
  flag.add(new flag (width/2, 0, flagWidth));
  int wideCount = width/ unit;
  int highCount = height/ unit;
  count = wideCount * highCount;
 // mods = new Module [count];
  
  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      //mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }

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
//class Module {
 // int xOffset;
  //int yOffset;
 // float x, y;
 // int unit;
 // int xDirection = 1;
 // int yDirection = 1;
 // float speed; 
  
  //  Module(int xOffsetTemp, int yOffsetTemp, int xTemp, int yTemp, float speedTemp, int tempUnit) {
    //xOffset = xOffsetTemp;
    //yOffset = yOffsetTemp;
    //x = xTemp;
    //y = yTemp;
    //speed = speedTemp;
    //unit = tempUnit;
    }
  void update()
  
    {
    x = x + (speed * xDirection);
    if (x >= unit || x <= 0) {
      xDirection *= -1;
      x = x + (1 * xDirection);
      y = y + (1 * yDirection);
    }
    if (y >= unit || y <= 0) {
      yDirection *= -1;
      y = y + (1 * yDirection);
    }
  }
    }



void draw()

{
  F1.update();
  F2.update();
// for (Module mod : mods) {
   // mod.update();
    //mod.display();
  for (int i = flag.size()-1; i >= 0; i--) {
    Flag flag = flag.get(i);
    flag.move();
    flag.display();
    if (ball.finished()) {
    }
  }
}
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
void mousePressed(){
  balls.add(new Ball(mouseX,mouseY, flagWidth));
  
