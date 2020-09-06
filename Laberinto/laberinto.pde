import ddf.minim.*;
Minim minim;
AudioPlayer sound;
//declaracion de variables globales y clases
boolean start = false, init = true;
int xpos=10,ypos=280,x2pos=280,y2pos=10,scl=10,n=0;
int[][] maze= new int[30][31];
PImage img2, img3, img4, img, img1;
int p1,p2,p3,p4,p5,p6,pj,pc, pmin = 200;
int x1,x2,x3,x4,x5,y1,y2,y3,y4,y5;
Menu A;
Puntaje B;
Tiempo C;
Interfaz D;

    void setup(){ //Se definen los objetos y se da valor inicial a las variables
  
    size(1280, 720);
    A = new Menu();
    B = new Puntaje();
    C = new Tiempo();
    D = new Interfaz();
    x1=30; x2=120; x3=65; x4=260; x5=145; y1=192; y2=52; y3=272; y4=252; y5=272;
    img = loadImage("Assets/Personaje.png");
    img1 = loadImage("Assets/Virus2.gif");
    img2 = loadImage("Assets/GelPixel.png");
    img3 = loadImage("Assets/HourGlassPixel.png");
    img4 = loadImage("Assets/MaskPixel.png");
<<<<<<< Updated upstream
    img5 = loadImage("Assets/meta.jpg");
    textSize(25);
=======
    minim = new Minim(this);
    sound=minim.loadFile("SupButtonSound.mp3");
    textSize(32);
>>>>>>> Stashed changes
    }

  void draw(){ //Se llaman a las funciones de las clases
  
  background(255);
  A.Mainmenu();
  scale(2.2);
  translate(150,0);
    
  if(start) {
      
    D.Matriz();
    D.update();
    D.show();
    C.tiempo();
    B.puntaje();
    }  
    fill(255,0,0);
    }

  void keyPressed(){ //Movimiento de los personajes y deteccion de las paredes
    
    if(n==0){
      if(key == 'w'||key == 'W'){
        if(maze[xpos/10][(ypos-10)/10]!=1){
        xpos+=0; ypos+=-10;
        }
      }else if (key == 's'||key == 'S'){
        if(maze[xpos/10][(ypos+20)/10]!=1){    
        xpos+=0; ypos+=10; 
        }
      }else if (key == 'd'||key == 'D'){
        if((maze[(xpos+10)/10][(ypos+10)/10]!=1)&&(maze[(xpos+10)/10][(ypos)/10]!=1)){    
        xpos+=10; ypos+=0;
        }
      }else if (key == 'a'||key == 'A'){
        if((maze[(xpos-10)/10][(ypos+10)/10]!=1)&&(maze[(xpos-10)/10][(ypos)/10]!=1)){
        xpos+=-10; ypos+=0;
        }
      }
      
      if(keyCode == UP){
        if(maze[x2pos/10][(y2pos-10)/10]!=1){
        x2pos+=0; y2pos+=-10;
        }
    }else if (keyCode == DOWN){
      if(maze[x2pos/10][(y2pos+20)/10]!=1){    
        x2pos+=0; y2pos+=10; 
      }
    }else if (keyCode == RIGHT){
      if((maze[(x2pos+10)/10][(y2pos+10)/10]!=1)&&(maze[(x2pos+10)/10][(y2pos)/10]!=1)){    
        x2pos+=10; y2pos+=0;
      }
    }else if (keyCode == LEFT){
      if((maze[(x2pos-10)/10][(y2pos+10)/10]!=1)&&(maze[(x2pos-10)/10][(y2pos)/10]!=1)){
        x2pos+=-10; y2pos+=0;
       }
      }
    }
  }
