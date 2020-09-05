class Menu 
{
  //Se declaran las variables para las imágenes y la fuente tipográfica
  PImage logo, logo2, ESRB, back, close, ctrlH, ctrlV;
  PFont font;
  boolean credits = false, tutorial = false, controls = false;
  
  Menu() 
   {
    //Se cargan las imagenes usadas en el menú
    logo = loadImage("Assets/RunAwayCovid.png");
    logo2 = loadImage("Assets/RunAwayCovidT.png");
    ESRB = loadImage("Assets/ESRB.png");
    back = loadImage("Assets/Back.png");
    close = loadImage("Assets/Close.png");
    ctrlH = loadImage("Assets/HumanCtrl.png");
    ctrlV = loadImage("Assets/VirusCtrl.png");
    font = createFont("Assets/Fipps-Regular.otf", 32);
    textFont(font);
   }

  void Mainmenu()
   {
    if(init)
    {
      //Se muestra la interfaz principal del menú
      image(logo, 51, 139, 722, 460);
      strokeWeight(20);
      textSize(32);
      fill(255);
      rect(880, 77.2, 322, 111);
      rect(880, 228.2, 322, 111);
      rect(880, 379.2, 322, 111);
      rect(880, 530.2, 322, 111);  
      fill(0);
      text("COMENZAR", 910.59, 154.32);
      text("TUTORIAL", 923.55, 305.3);
      text("CRÉDITOS", 923.55, 462.8);
      text("SALIR", 975.4, 607.3);
      if(mouseX > 880 && mouseX < 1202 && mouseY > 77.2 && mouseY < 188.2)
      {
        //Características del botón "comenzar"
        fill(0, 120);
        rect(880, 77.2, 322, 111);
        if(mousePressed)
        {
          textSize(15);
          start = true;
          init = false;
        }
      }
      if(mouseX > 880 && mouseX < 1202 && mouseY > 228.2 && mouseY < 339.2)
      {
        //Características del botón "tutorial"
        fill(0, 120);
        rect(880, 228.2, 322, 111);
        if(mousePressed)
        {
          tutorial = true;
          controls = true;
          init = false;
        }
      }
      if(mouseX > 880 && mouseX < 1202 && mouseY > 379.2 && mouseY < 490.2)
      {
        //Características del botón "créditos"
        fill(0, 120);
        rect(880, 379.2, 322, 111);
        if(mousePressed)
        {
          credits = true;
          init = false;
        }
      }
      if(mouseX > 880 && mouseX < 1202 && mouseY > 530.2 && mouseY < 641.2)
      {
        //Características del botón "salir"
        fill(0, 120);
        rect(880, 530.2, 322, 111);
        if(mousePressed)
        {
          exit();
        }
      }
    }
    if(credits) 
    {
      //Muestra la interfaz con los créditos
      image(close, 10, 10, 50, 50);
      if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 60)
      {
        strokeWeight(0);
        fill(0, 120);
        rect(10, 10, 50, 50);
        if(mousePressed)
        {
          credits = false;
          init = true;
        }
      }
      image(logo, (width/2)-142, 68, 284, 180);
      fill(0);
      text("Cristian Camilo Alvarino Castro", (width/2)-409, (height/2)-30);
      text("Andrés David Baena Atencio", (width/2)-368, (height/2)+20);
      image(ESRB, (width/2)-75, (height/2)+70, 150, 225);
    }
    if(tutorial)
    {
      //Muestra la interfaz del tutorial
      image(close, 10, 10, 50, 50);
      image(logo2, width-1270, 624, 134.87 , 86); 
      strokeWeight(5);
      strokeCap(RECT);
      line(640, 227.43, 640, 620.07);
      if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 60)
      {
        strokeWeight(0);
        fill(0, 120);
        rect(10, 10, 50, 50);
        if(mousePressed)
        {
          tutorial = false;
          init = true;
        }
      }
      if(controls)
      {
        fill(0);
        textSize(48);
        text("CONTROLES", 443.13, 122.5);
        textSize(36);
        text("HUMANO", 213.31, 271.21 );  
        text("VIRUS", 882.78, 271.19); 
        image(ctrlH, 52.54, 322.07, 534.17, 276.77);    
        image(ctrlV, 692.57, 322.07, 534.17, 276.77);
      }
    }
  }
}
