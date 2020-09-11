//import ddf.minim.*;
//Minim minim;
//AudioPlayer sound;
//declaracion de variables globales y clases
boolean start = false, init = true, puntaje = false, resetdead = false, resetwin = false, resetnotime = false;
int xpos=10,ypos=280,x2pos=280,y2pos=10,scl=10,n=0;
int s = 6000;
int[][] maze= new int[30][31];
PImage img2, img3, img4, img, img1, img5, back, background;
int p1,p2,p3,p4,p5,p6,pj,pc, pmin = 200;
int x1,x2,x3,x4,x5,y1,y2,y3,y4,y5;
Menu A;
Puntaje B;
Tiempo C;
Interfaz D;
Condiciones E;
Movimiento F;

    void setup(){ //Se definen los objetos y se da valor inicial a las variables
  
    size(1280, 720);
    //minim = new Minim(this);
    //sound = minim.loadFile("SupButtonSound.mp3");
    A = new Menu();
    B = new Puntaje();
    C = new Tiempo();
    D = new Interfaz();
    E = new Condiciones();
    F = new Movimiento();
    x1=30; x2=120; x3=65; x4=260; x5=145; y1=192; y2=52; y3=272; y4=252; y5=272;
    img = loadImage("Assets/Personaje.png");
    img1 = loadImage("Assets/VirusFixed.png");
    img2 = loadImage("Assets/GelPixel.png");
    img3 = loadImage("Assets/HourGlassPixel.png");
    img4 = loadImage("Assets/MaskPixel.png");
    img5 = loadImage("Assets/Meta.png");
    back = loadImage("Assets/Back.png");
    background = loadImage("Assets/CovidBackground.png");
    textSize(25);
    textSize(32);
    }

  void draw(){ //Se llaman a las funciones de las clases
  
  background(255);
  image(background, 0, 0, 1280, 720);
  stroke(0);
  A.Mainmenu();
  if(resetdead)
  {
    E.ResetDead();
  }
  if(resetwin)
  {
    E.ResetWin();
  }
  if(resetnotime)
  {
    E.ResetNoTime();
  }
  if(start)
  {
    image(back, 10, 10, 50, 50);
    if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 60)
    {
      fill(0, 120);
      rect(10, 10, 50, 50);
      if(mousePressed)
      {
        start = false;
        init = true;
      }
    }
  }
  scale(2.2);
  translate(150,0);
  //B.infectado();
  if(start) 
  {
    B.puntaje();
    D.Matriz();
    D.update();
    D.show();
    C.tiempo();
   }  
 }
 
void keyPressed(){
  F.movimiento();
}
