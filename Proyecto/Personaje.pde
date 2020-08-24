class Personaje
{
  PImage img, img1, img2, img3, img4, logo;
  int y1,x1,y2,x2;
  
  Personaje()
  {
    img = loadImage("Assets/Virus2.gif");
    img1 = loadImage("Assets/Personaje.gif");
    img2 = loadImage("Assets/gel.png");
    img3 = loadImage("Assets/reloj.png");
    img4 = loadImage("Assets/mascara.png");
    logo = loadImage("Assets/RunAwayCovid.png"); //Carga el logo del juego
    y1 = 600; x1 = 340; y2 = 20; x2 = 920;
  }
  
  void Mainmenu()
  {
    fill(255);
    rect(0, 0, width, height);
    image(logo, 51, 139, 722, 460);
    strokeWeight(0);
    rect(887, 124, 322, 111);
    rect(887, 312, 322, 111);
    rect(887, 500, 322, 111);
 
  }
    
 void movimiento() {
 
    image(img, x2, y2, 35, 35);
    image(img1, x1, y1, 90, 90);
    image(img2, 30, 190, 10, 10);
    image(img3, 120, 50, 10, 10);
    image(img4, 60, 270, 10, 10);
    image(img3, 260, 250, 10, 10);
 
   
    if(y1u) //Dibuja el movimiento hacia arriba de la barra lateral izquierda
    {
     y1 -= 2; 
    }
    if(y1d) //Dibuja el movimiento hacia abajo de la barra lateral izquierda
    {
     y1 += 2; 
    }
    if(y2u)  //Dibuja el movimiento hacia arriba de la barra lateral derecha
    {
     y2 -= 2; 
    }
    if(y2d) //Dibuja el movimiento hacia abajo de la barra lateral derecha
    {
     y2 += 2; 
    }
    if(x1i) //Dibuja el movimiento hacia arriba de la barra lateral izquierda
    {
     x1 -= 2; 
    }
    if(x1d) //Dibuja el movimiento hacia abajo de la barra lateral izquierda
    {
     x1 += 2; 
    }
    if(x2i)  //Dibuja el movimiento hacia arriba de la barra lateral derecha
    {
     x2 -= 2; 
    }
    if(x2d) //Dibuja el movimiento hacia abajo de la barra lateral derecha
    {
     x2 += 2; 
    }
  }
  void keymov()
  {
    if(key == 'w' || key == 'W') //Define si la tecla de control está siendo presionada
    {
      y1u = true;
    }
    if(key == 's' || key == 'S') //Define si la tecla de control está siendo presionada
    {
      y1d = true;
    }
    if(keyCode == UP) //Define si la tecla de control está siendo presionada
    {
      y2u = true;
    }
    if(keyCode == DOWN) //Define si la tecla de control está siendo presionada
    {
      y2d = true;
    }
     if(key == 'd' || key == 'D') //Define si la tecla de control está siendo presionada
    {
      x1d = true;
    }
    if(key == 'a' || key == 'A') //Define si la tecla de control está siendo presionada
    {
      x1i= true;
    }
    if(keyCode == LEFT) //Define si la tecla de control está siendo presionada
    {
      x2i = true;
    }
    if(keyCode == RIGHT) //Define si la tecla de control está siendo presionada
    {
      x2d = true;
    }
  }
  
  void keymov0(){
    
 if(key == 'w' || key == 'W') //Define si la tecla de control está siendo presionada
    {
      y1u = false;
    }
    if(key == 's' || key == 'S') //Define si la tecla de control está siendo presionada
    {
      y1d = false;
    }
    if(keyCode == UP) //Define si la tecla de control está siendo presionada
    {
      y2u = false;
    }
    if(keyCode == DOWN) //Define si la tecla de control está siendo presionada
    {
      y2d = false;
    }
     if(key == 'd' || key == 'D') //Define si la tecla de control está siendo presionada
    {
      x1d = false;
    }
    if(key == 'a' || key == 'A') //Define si la tecla de control está siendo presionada
    {
      x1i= false;
    }
    if(keyCode == LEFT) //Define si la tecla de control está siendo presionada
    {
      x2i = false;
    }
    if(keyCode == RIGHT) //Define si la tecla de control está siendo presionada
    {
      x2d = false;
    }
  }
  
  
}
