//declaracion de variables globales y clases
boolean start = false, init = true, crets = false;
int xpos=10,ypos=280,x2pos=280,y2pos=10,scl=10,n=0;
int[][] maze= new int[30][31];
PImage img2, img3, img4, img, img1;
int p1,p2,p3,p4,p5,p6,pj,pc, pmin = 200;
int x1,x2,x3,x4,x5,y1,y2,y3,y4,y5;
Menu A;
Puntaje B;
Tiempo C;
Interfaz D;

    void setup(){ //se definen los objetos y se da valor inicial a las variables
  
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
    textSize(25);
    }

  void draw(){ //se llaman a las funciones de las clases
  
  background(255);
  A.Mainmenu();
  scale(2.2);
  translate(150,0);
    
  if(start) {
      
    Maze();
    D.update();
    D.show();
    C.tiempo();
    B.puntaje();
    }  
    fill(255,0,0);
    }
  
   void Maze(){ //Matriz que dibuja el laberinto, los 0 son espacios vacios y los 1 se rellenan de cuadros negros
 
   maze[0][0]=1; maze[0][1]=1;  maze[0][2]=1;  maze[0][3]=1;  maze[0][4]=1;  maze[0][5]=1;  maze[0][6]=1;  maze[0][7]=1;  maze[0][8]=1;  maze[0][9]=1;  maze[0][10]=1;  maze[0][11]=1;  maze[0][12]=1;  maze[0][13]=1;  maze[0][14]=1;  maze[0][15]=1;  maze[0][16]=1;  maze[0][17]=1;  maze[0][18]=1;  maze[0][19]=1;  maze[0][20]=1;  maze[0][21]=1;  maze[0][22]=1;  maze[0][23]=1;  maze[0][24]=1;  maze[0][25]=1;  maze[0][26]=1;  maze[0][27]=1;  maze[0][28]=1;  maze[0][29]=1;  maze[0][30]=1;
   maze[1][0]=1; maze[1][1]=0;  maze[1][2]=0;  maze[1][3]=0;  maze[1][4]=0;  maze[1][5]=0;  maze[1][6]=0;  maze[1][7]=0;  maze[1][8]=0;  maze[1][9]=0;  maze[1][10]=0;  maze[1][11]=0;  maze[1][12]=0;  maze[1][13]=0;  maze[1][14]=1;  maze[1][15]=0;  maze[1][16]=0;  maze[1][17]=0;  maze[1][18]=0;  maze[1][19]=0;  maze[1][20]=0;  maze[1][21]=1;  maze[1][22]=0;  maze[1][23]=0;  maze[1][24]=0;  maze[1][25]=0;  maze[1][26]=0;  maze[1][27]=0;  maze[1][28]=0;  maze[1][29]=0;  maze[1][30]=1;
   maze[2][0]=1; maze[2][1]=0;  maze[2][2]=0;  maze[2][3]=0;  maze[2][4]=0;  maze[2][5]=0;  maze[2][6]=0;  maze[2][7]=0;  maze[2][8]=0;  maze[2][9]=0;  maze[2][10]=0;  maze[2][11]=0;  maze[2][12]=0;  maze[2][13]=0;  maze[2][14]=1;  maze[2][15]=0;  maze[2][16]=0;  maze[2][17]=0;  maze[2][18]=0;  maze[2][19]=0;  maze[2][20]=0;  maze[2][21]=1;  maze[2][22]=0;  maze[2][23]=0;  maze[2][24]=0;  maze[2][25]=0;  maze[2][26]=0;  maze[2][27]=0;  maze[2][28]=0;  maze[2][29]=0;  maze[2][30]=1;
   maze[3][0]=1; maze[3][1]=0;  maze[3][2]=0;  maze[3][3]=1;  maze[3][4]=1;  maze[3][5]=1;  maze[3][6]=0;  maze[3][7]=0;  maze[3][8]=1;  maze[3][9]=1;  maze[3][10]=1;  maze[3][11]=1;  maze[3][12]=0;  maze[3][13]=0;  maze[3][14]=1;  maze[3][15]=1;  maze[3][16]=0;  maze[3][17]=0;  maze[3][18]=1;  maze[3][19]=0;  maze[3][20]=0;  maze[3][21]=1;  maze[3][22]=0;  maze[3][23]=0;  maze[3][24]=1;  maze[3][25]=1;  maze[3][26]=1;  maze[3][27]=1;  maze[3][28]=1;  maze[3][29]=1;  maze[3][30]=1;
   maze[4][0]=1; maze[4][1]=0;  maze[4][2]=0;  maze[4][3]=1;  maze[4][4]=1;  maze[4][5]=1;  maze[4][6]=1;  maze[4][7]=1;  maze[4][8]=1;  maze[4][9]=1;  maze[4][10]=1;  maze[4][11]=1;  maze[4][12]=0;  maze[4][13]=0;  maze[4][14]=1;  maze[4][15]=1;  maze[4][16]=0;  maze[4][17]=0;  maze[4][18]=1;  maze[4][19]=1;  maze[4][20]=1;  maze[4][21]=1;  maze[4][22]=0;  maze[4][23]=0;  maze[4][24]=1;  maze[4][25]=1;  maze[4][26]=1;  maze[4][27]=1;  maze[4][28]=0;  maze[4][29]=0;  maze[4][30]=1;  
   maze[5][0]=1; maze[5][1]=0;  maze[5][2]=0;  maze[5][3]=1;  maze[5][4]=1;  maze[5][5]=1;  maze[5][6]=1;  maze[5][7]=1;  maze[5][8]=1;  maze[5][9]=1;  maze[5][10]=1;  maze[5][11]=1;  maze[5][12]=0;  maze[5][13]=0;  maze[5][14]=1;  maze[5][15]=1;  maze[5][16]=0;  maze[5][17]=0;  maze[5][18]=0;  maze[5][19]=0;  maze[5][20]=0;  maze[5][21]=0;  maze[5][22]=0;  maze[5][23]=0;  maze[5][24]=1;  maze[5][25]=1;  maze[5][26]=1;  maze[5][27]=1;  maze[5][28]=0;  maze[5][29]=0;  maze[5][30]=1;  
   maze[6][0]=1; maze[6][1]=0;  maze[6][2]=0;  maze[6][3]=1;  maze[6][4]=1;  maze[6][5]=1;  maze[6][6]=0;  maze[6][7]=0;  maze[6][8]=1;  maze[6][9]=1;  maze[6][10]=1;  maze[6][11]=1;  maze[6][12]=0;  maze[6][13]=0;  maze[6][14]=1;  maze[6][15]=1;  maze[6][16]=0;  maze[6][17]=0;  maze[6][18]=0;  maze[6][19]=0;  maze[6][20]=0;  maze[6][21]=0;  maze[6][22]=0;  maze[6][23]=0;  maze[6][24]=1;  maze[6][25]=1;  maze[6][26]=1;  maze[6][27]=0;  maze[6][28]=0;  maze[6][29]=0;  maze[6][30]=1;    
   maze[7][0]=1; maze[7][1]=0;  maze[7][2]=0;  maze[7][3]=0;  maze[7][4]=0;  maze[7][5]=0;  maze[7][6]=0;  maze[7][7]=0;  maze[7][8]=0;  maze[7][9]=0;  maze[7][10]=0;  maze[7][11]=0;  maze[7][12]=0;  maze[7][13]=0;  maze[7][14]=1;  maze[7][15]=1;  maze[7][16]=1;  maze[7][17]=1;  maze[7][18]=1;  maze[7][19]=1;  maze[7][20]=1;  maze[7][21]=1;  maze[7][22]=1;  maze[7][23]=1;  maze[7][24]=1;  maze[7][25]=1;  maze[7][26]=1;  maze[7][27]=0;  maze[7][28]=0;  maze[7][29]=0;  maze[7][30]=1;
   maze[8][0]=1; maze[8][1]=0;  maze[8][2]=0;  maze[8][3]=0;  maze[8][4]=0;  maze[8][5]=0;  maze[8][6]=0;  maze[8][7]=0;  maze[8][8]=0;  maze[8][9]=0;  maze[8][10]=0;  maze[8][11]=0;  maze[8][12]=0;  maze[8][13]=0;  maze[8][14]=1;  maze[8][15]=1;  maze[8][16]=1;  maze[8][17]=1;  maze[8][18]=1;  maze[8][19]=1;  maze[8][20]=1;  maze[8][21]=1;  maze[8][22]=1;  maze[8][23]=1;  maze[8][24]=1;  maze[8][25]=1;  maze[8][26]=1;  maze[8][27]=1;  maze[8][28]=0;  maze[8][29]=0;  maze[8][30]=1;
   maze[9][0]=1; maze[9][1]=1;  maze[9][2]=1;  maze[9][3]=1;  maze[9][4]=1;  maze[9][5]=1;  maze[9][6]=1;  maze[9][7]=1;  maze[9][8]=1;  maze[9][9]=1;  maze[9][10]=1;  maze[9][11]=1;  maze[9][12]=1;  maze[9][13]=1;  maze[9][14]=0;  maze[9][15]=0;  maze[9][16]=1;  maze[9][17]=1;  maze[9][18]=1;  maze[9][19]=1;  maze[9][20]=1;  maze[9][21]=1;  maze[9][22]=1;  maze[9][23]=1;  maze[9][24]=1;  maze[9][25]=1;  maze[9][26]=1;  maze[9][27]=1;  maze[9][28]=0;  maze[9][29]=0;  maze[9][30]=1;
  maze[10][0]=1; maze[10][1]=1; maze[10][2]=1; maze[10][3]=1; maze[10][4]=1; maze[10][5]=1; maze[10][6]=1; maze[10][7]=1; maze[10][8]=1; maze[10][9]=1; maze[10][10]=1; maze[10][11]=1; maze[10][12]=1; maze[10][13]=1; maze[10][14]=0; maze[10][15]=0; maze[10][16]=1; maze[10][17]=1; maze[10][18]=1; maze[10][19]=1; maze[10][20]=1; maze[10][21]=1; maze[10][22]=1; maze[10][23]=1; maze[10][24]=1; maze[10][25]=0; maze[10][26]=0; maze[10][27]=1; maze[10][28]=1; maze[10][29]=1; maze[10][30]=1;
  maze[11][0]=1; maze[11][1]=0; maze[11][2]=0; maze[11][3]=1; maze[11][4]=1; maze[11][5]=1; maze[11][6]=1; maze[11][7]=1; maze[11][8]=1; maze[11][9]=1; maze[11][10]=0; maze[11][11]=0; maze[11][12]=1; maze[11][13]=1; maze[11][14]=0; maze[11][15]=0; maze[11][16]=1; maze[11][17]=1; maze[11][18]=1; maze[11][19]=1; maze[11][20]=1; maze[11][21]=1; maze[11][22]=1; maze[11][23]=1; maze[11][24]=0; maze[11][25]=0; maze[11][26]=0; maze[11][27]=0; maze[11][28]=0; maze[11][29]=0; maze[11][30]=1;
  maze[12][0]=1; maze[12][1]=0; maze[12][2]=0; maze[12][3]=1; maze[12][4]=1; maze[12][5]=0; maze[12][6]=0; maze[12][7]=1; maze[12][8]=1; maze[12][9]=1; maze[12][10]=0; maze[12][11]=0; maze[12][12]=1; maze[12][13]=1; maze[12][14]=0; maze[12][15]=0; maze[12][16]=1; maze[12][17]=1; maze[12][18]=1; maze[12][19]=1; maze[12][20]=1; maze[12][21]=1; maze[12][22]=1; maze[12][23]=1; maze[12][24]=0; maze[12][25]=0; maze[12][26]=0; maze[12][27]=0; maze[12][28]=0; maze[12][29]=0; maze[12][30]=1;
  maze[13][0]=1; maze[13][1]=0; maze[13][2]=0; maze[13][3]=0; maze[13][4]=0; maze[13][5]=0; maze[13][6]=0; maze[13][7]=0; maze[13][8]=0; maze[13][9]=0; maze[13][10]=0; maze[13][11]=0; maze[13][12]=1; maze[13][13]=1; maze[13][14]=0; maze[13][15]=0; maze[13][16]=0; maze[13][17]=0; maze[13][18]=0; maze[13][19]=0; maze[13][20]=0; maze[13][21]=0; maze[13][22]=0; maze[13][23]=1; maze[13][24]=1; maze[13][25]=0; maze[13][26]=0; maze[13][27]=1; maze[13][28]=0; maze[13][29]=0; maze[13][30]=1;
  maze[14][0]=1; maze[14][1]=0; maze[14][2]=0; maze[14][3]=0; maze[14][4]=0; maze[14][5]=0; maze[14][6]=0; maze[14][7]=0; maze[14][8]=0; maze[14][9]=0; maze[14][10]=0; maze[14][11]=0; maze[14][12]=1; maze[14][13]=1; maze[14][14]=0; maze[14][15]=0; maze[14][16]=0; maze[14][17]=0; maze[14][18]=0; maze[14][19]=0; maze[14][20]=0; maze[14][21]=0; maze[14][22]=0; maze[14][23]=1; maze[14][24]=1; maze[14][25]=0; maze[14][26]=0; maze[14][27]=0; maze[14][28]=0; maze[14][29]=0; maze[14][30]=1;
  maze[15][0]=1; maze[15][1]=1; maze[15][2]=1; maze[15][3]=1; maze[15][4]=1; maze[15][5]=1; maze[15][6]=1; maze[15][7]=1; maze[15][8]=1; maze[15][9]=1; maze[15][10]=1; maze[15][11]=1; maze[15][12]=1; maze[15][13]=1; maze[15][14]=1; maze[15][15]=1; maze[15][16]=1; maze[15][17]=1; maze[15][18]=1; maze[15][19]=1; maze[15][20]=1; maze[15][21]=0; maze[15][22]=0; maze[15][23]=1; maze[15][24]=1; maze[15][25]=0; maze[15][26]=0; maze[15][27]=0; maze[15][28]=0; maze[15][29]=0; maze[15][30]=1;
  maze[16][0]=1; maze[16][1]=0; maze[16][2]=0; maze[16][3]=0; maze[16][4]=0; maze[16][5]=0; maze[16][6]=0; maze[16][7]=1; maze[16][8]=1; maze[16][9]=1; maze[16][10]=1; maze[16][11]=1; maze[16][12]=1; maze[16][13]=1; maze[16][14]=1; maze[16][15]=1; maze[16][16]=1; maze[16][17]=1; maze[16][18]=1; maze[16][19]=1; maze[16][20]=1; maze[16][21]=0; maze[16][22]=0; maze[16][23]=1; maze[16][24]=1; maze[16][25]=0; maze[16][26]=0; maze[16][27]=1; maze[16][28]=0; maze[16][29]=0; maze[16][30]=1;
  maze[17][0]=1; maze[17][1]=0; maze[17][2]=0; maze[17][3]=0; maze[17][4]=0; maze[17][5]=0; maze[17][6]=0; maze[17][7]=1; maze[17][8]=1; maze[17][9]=1; maze[17][10]=1; maze[17][11]=1; maze[17][12]=1; maze[17][13]=1; maze[17][14]=1; maze[17][15]=1; maze[17][16]=1; maze[17][17]=1; maze[17][18]=1; maze[17][19]=1; maze[17][20]=1; maze[17][21]=0; maze[17][22]=0; maze[17][23]=1; maze[17][24]=1; maze[17][25]=0; maze[17][26]=0; maze[17][27]=1; maze[17][28]=0; maze[17][29]=0; maze[17][30]=1;
  maze[18][0]=1; maze[18][1]=0; maze[18][2]=0; maze[18][3]=1; maze[18][4]=1; maze[18][5]=0; maze[18][6]=0; maze[18][7]=1; maze[18][8]=0; maze[18][9]=0; maze[18][10]=0; maze[18][11]=0; maze[18][12]=0; maze[18][13]=0; maze[18][14]=0; maze[18][15]=0; maze[18][16]=0; maze[18][17]=0; maze[18][18]=0; maze[18][19]=0; maze[18][20]=1; maze[18][21]=0; maze[18][22]=0; maze[18][23]=1; maze[18][24]=1; maze[18][25]=1; maze[18][26]=1; maze[18][27]=1; maze[18][28]=1; maze[18][29]=1; maze[18][30]=1;
  maze[19][0]=1; maze[19][1]=0; maze[19][2]=0; maze[19][3]=1; maze[19][4]=1; maze[19][5]=0; maze[19][6]=0; maze[19][7]=1; maze[19][8]=0; maze[19][9]=0; maze[19][10]=0; maze[19][11]=0; maze[19][12]=0; maze[19][13]=0; maze[19][14]=0; maze[19][15]=0; maze[19][16]=0; maze[19][17]=0; maze[19][18]=0; maze[19][19]=0; maze[19][20]=1; maze[19][21]=0; maze[19][22]=0; maze[19][23]=1; maze[19][24]=1; maze[19][25]=0; maze[19][26]=0; maze[19][27]=0; maze[19][28]=0; maze[19][29]=0; maze[19][30]=1;
  maze[20][0]=1; maze[20][1]=0; maze[20][2]=0; maze[20][3]=1; maze[20][4]=1; maze[20][5]=1; maze[20][6]=1; maze[20][7]=1; maze[20][8]=0; maze[20][9]=0; maze[20][10]=1; maze[20][11]=1; maze[20][12]=1; maze[20][13]=1; maze[20][14]=1; maze[20][15]=1; maze[20][16]=1; maze[20][17]=1; maze[20][18]=1; maze[20][19]=1; maze[20][20]=1; maze[20][21]=0; maze[20][22]=0; maze[20][23]=1; maze[20][24]=1; maze[20][25]=0; maze[20][26]=0; maze[20][27]=0; maze[20][28]=0; maze[20][29]=0; maze[20][30]=1;
  maze[21][0]=1; maze[21][1]=0; maze[21][2]=0; maze[21][3]=1; maze[21][4]=0; maze[21][5]=0; maze[21][6]=1; maze[21][7]=1; maze[21][8]=0; maze[21][9]=0; maze[21][10]=0; maze[21][11]=0; maze[21][12]=0; maze[21][13]=0; maze[21][14]=0; maze[21][15]=0; maze[21][16]=0; maze[21][17]=1; maze[21][18]=1; maze[21][19]=1; maze[21][20]=1; maze[21][21]=1; maze[21][22]=1; maze[21][23]=1; maze[21][24]=1; maze[21][25]=0; maze[21][26]=0; maze[21][27]=1; maze[21][28]=1; maze[21][29]=1; maze[21][30]=1;
  maze[22][0]=1; maze[22][1]=0; maze[22][2]=0; maze[22][3]=1; maze[22][4]=0; maze[22][5]=0; maze[22][6]=1; maze[22][7]=1; maze[22][8]=0; maze[22][9]=0; maze[22][10]=0; maze[22][11]=0; maze[22][12]=0; maze[22][13]=0; maze[22][14]=0; maze[22][15]=0; maze[22][16]=0; maze[22][17]=1; maze[22][18]=1; maze[22][19]=1; maze[22][20]=1; maze[22][21]=1; maze[22][22]=1; maze[22][23]=1; maze[22][24]=1; maze[22][25]=0; maze[22][26]=0; maze[22][27]=1; maze[22][28]=0; maze[22][29]=0; maze[22][30]=1;
  maze[23][0]=1; maze[23][1]=0; maze[23][2]=0; maze[23][3]=1; maze[23][4]=0; maze[23][5]=0; maze[23][6]=1; maze[23][7]=1; maze[23][8]=1; maze[23][9]=1; maze[23][10]=1; maze[23][11]=1; maze[23][12]=1; maze[23][13]=1; maze[23][14]=1; maze[23][15]=0; maze[23][16]=0; maze[23][17]=0; maze[23][18]=0; maze[23][19]=0; maze[23][20]=0; maze[23][21]=0; maze[23][22]=0; maze[23][23]=0; maze[23][24]=0; maze[23][25]=0; maze[23][26]=0; maze[23][27]=1; maze[23][28]=0; maze[23][29]=0; maze[23][30]=1;
  maze[24][0]=1; maze[24][1]=0; maze[24][2]=0; maze[24][3]=1; maze[24][4]=0; maze[24][5]=0; maze[24][6]=0; maze[24][7]=0; maze[24][8]=0; maze[24][9]=0; maze[24][10]=0; maze[24][11]=0; maze[24][12]=0; maze[24][13]=0; maze[24][14]=1; maze[24][15]=0; maze[24][16]=0; maze[24][17]=0; maze[24][18]=0; maze[24][19]=0; maze[24][20]=0; maze[24][21]=0; maze[24][22]=0; maze[24][23]=0; maze[24][24]=0; maze[24][25]=0; maze[24][26]=0; maze[24][27]=1; maze[24][28]=0; maze[24][29]=0; maze[24][30]=1;
  maze[25][0]=1; maze[25][1]=0; maze[25][2]=0; maze[25][3]=1; maze[25][4]=0; maze[25][5]=0; maze[25][6]=0; maze[25][7]=0; maze[25][8]=0; maze[25][9]=0; maze[25][10]=0; maze[25][11]=0; maze[25][12]=0; maze[25][13]=0; maze[25][14]=1; maze[25][15]=1; maze[25][16]=1; maze[25][17]=1; maze[25][18]=1; maze[25][19]=1; maze[25][20]=1; maze[25][21]=1; maze[25][22]=1; maze[25][23]=1; maze[25][24]=1; maze[25][25]=1; maze[25][26]=1; maze[25][27]=1; maze[25][28]=0; maze[25][29]=0; maze[25][30]=1;
  maze[26][0]=1; maze[26][1]=1; maze[26][2]=1; maze[26][3]=1; maze[26][4]=1; maze[26][5]=1; maze[26][6]=1; maze[26][7]=1; maze[26][8]=1; maze[26][9]=1; maze[26][10]=1; maze[26][11]=1; maze[26][12]=1; maze[26][13]=1; maze[26][14]=1; maze[26][15]=1; maze[26][16]=1; maze[26][17]=1; maze[26][18]=1; maze[26][19]=1; maze[26][20]=1; maze[26][21]=1; maze[26][22]=1; maze[26][23]=1; maze[26][24]=1; maze[26][25]=0; maze[26][26]=0; maze[26][27]=1; maze[26][28]=0; maze[26][29]=0; maze[26][30]=1;
  maze[27][0]=1; maze[27][1]=0; maze[27][2]=0; maze[27][3]=0; maze[27][4]=0; maze[27][5]=0; maze[27][6]=0; maze[27][7]=0; maze[27][8]=0; maze[27][9]=0; maze[27][10]=0; maze[27][11]=0; maze[27][12]=0; maze[27][13]=0; maze[27][14]=0; maze[27][15]=0; maze[27][16]=0; maze[27][17]=0; maze[27][18]=0; maze[27][19]=0; maze[27][20]=0; maze[27][21]=0; maze[27][22]=0; maze[27][23]=0; maze[27][24]=0; maze[27][25]=0; maze[27][26]=0; maze[27][27]=0; maze[27][28]=0; maze[27][29]=0; maze[27][30]=1;
  maze[28][0]=1; maze[28][1]=0; maze[28][2]=0; maze[28][3]=0; maze[28][4]=0; maze[28][5]=0; maze[28][6]=0; maze[28][7]=0; maze[28][8]=0; maze[28][9]=0; maze[28][10]=0; maze[28][11]=0; maze[28][12]=0; maze[28][13]=0; maze[28][14]=0; maze[28][15]=0; maze[28][16]=0; maze[28][17]=0; maze[28][18]=0; maze[28][19]=0; maze[28][20]=0; maze[28][21]=0; maze[28][22]=0; maze[28][23]=0; maze[28][24]=0; maze[28][25]=0; maze[28][26]=0; maze[28][27]=0; maze[28][28]=0; maze[28][29]=0; maze[28][30]=1;
  maze[29][0]=1; maze[29][1]=1; maze[29][2]=1; maze[29][3]=1; maze[29][4]=1; maze[29][5]=1; maze[29][6]=1; maze[29][7]=1; maze[29][8]=1; maze[29][9]=1; maze[29][10]=1; maze[29][11]=1; maze[29][12]=1; maze[29][13]=1; maze[29][14]=1; maze[29][15]=1; maze[29][16]=1; maze[29][17]=1; maze[29][18]=1; maze[29][19]=1; maze[29][20]=1; maze[29][21]=1; maze[29][22]=1; maze[29][23]=1; maze[29][24]=1; maze[29][25]=1; maze[29][26]=1; maze[29][27]=1; maze[29][28]=1; maze[29][29]=1; maze[29][30]=1;
  for(int i=0; i<=29; i++){
    for (int j=0; j<=30; j++){
      if(maze[i][j]==1){
        fill(0);
        noStroke();
        rect((i)*10,j*10,10,10);
      }
    }
  }
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
