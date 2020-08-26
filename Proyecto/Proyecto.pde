boolean y1u, y1d, x1d, x1i, y2u, y2d, x2d, x2i, start = false, init = true, crets = false; 
PImage img,img1; int y1,x1,x2,y2;
PShape logo;
int n=0; 
Menu A;
Laberinto B;
Tiempo C;

void setup(){
  
  A = new Menu();
  B = new Laberinto();
  C = new Tiempo();
  size(1280, 720);
  textSize(32);
  background(255);

}

void draw () 
{
background(255);
A.Mainmenu();
scale(2.2);
translate(150,0);
if(start)
  {
    B.movimiento();
    B.laberinto();
    B.puntaje();
    C.tiempo();
  }
}
  
void keyPressed()
{
  B.keymov();
}
  
void keyReleased()
{
  B.keymov0();
}
