PImage img;
PImage Bc;
float position_x;
float position_y;
float step_x;
float step_y;
int stepcolor;


void setup()
{
  size(1000, 600);
   Bc = loadImage("forest.png"); 
  img = loadImage("sf.png");
  
  position_x = 120;
  position_y = 140;
  step_x = 4;
  step_y = 4;
  stepcolor = 0;
}

void draw()
{
  background(158, 154, 153);
  image(Bc, 0, 0, width, height);
  image(img, position_x, position_y);
  
  position_x += step_x;
  position_y += step_y;
  
  if (position_x  >= 900 | position_x <= 0) { 
    step_x = -step_x;
    
  }
  
  if (position_y  >= 490 | position_y <= 0) {
    step_y = -step_y;
  }
}
  
