class Personaje{

  PImage img;
  int y1,x1,y2,x2;
  
  Personaje(){

    img = loadImage("virus.png");
    y1 = 70; x1 = 20; y2 = height/2; x2 = width/2;
  }
  
 void movimiento() {
 
    image(img, x1, y1);
   
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
