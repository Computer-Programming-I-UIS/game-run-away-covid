boolean y1u, y1d, x1d, x1i, y2u, y2d, x2d, x2i, start ; 
PImage img,img1; int y1,x1,x2,y2;
PShape logo;
int n=0,time=60;
Personaje A;
Laberinto B;

void setup(){
  
  A = new Personaje();
  B = new Laberinto();
  size(1280, 720);
  textSize(25);
  background(255);

}

void draw () 
{
A.Mainmenu();
background(255);
fill(0); 
text("TIEMPO\n"+time,130,30);
A.movimiento();
B.laberinto();
}
  
void keyPressed()
{
  A.keymov();
}
  
void keyReleased()
{
  A.keymov0();
}
