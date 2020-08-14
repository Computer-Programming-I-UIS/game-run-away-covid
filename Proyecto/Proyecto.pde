boolean y1u, y1d, x1d, x1i, y2u, y2d, x2d, x2i ; 
PImage img; int y1,x1;
Personaje A;

void setup(){
  
  A = new Personaje();
  img = loadImage("virus.png");
  
  size(1080, 720);
  textSize(25);
  background(255);
  
}

void draw () {
  
  background(255);
  A.movimiento();
 
}

void keyPressed()
{
  A.keymov();
}
  
void keyReleased()
{
  A.keymov0();
}
