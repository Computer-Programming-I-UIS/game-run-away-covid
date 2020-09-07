class Menu 
{
  //Se declaran las variables para las imágenes y la fuente tipográfica
  PImage logo, logo2, ESRB, back, close, ctrlH, ctrlV, rightA, leftA, rightAG, leftAG, upA, downA, upAG, downAG;
  PFont font;
  boolean credits = false, tutorial = false, controls = false, instructions = false, instructions2 = false, I1 = false, I2 = false;
  
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
    rightA = loadImage("Assets/RightArrow.png");
    leftA = loadImage("Assets/LeftArrow.png");
    upA = loadImage("Assets/UpArrow.png");
    downA = loadImage("Assets/DownArrow.png");
    upAG = loadImage("Assets/UpArrowGrey.png");
    downAG = loadImage("Assets/DownArrowGrey.png");
    rightAG = loadImage("Assets/RightArrowGrey.png");
    leftAG = loadImage("Assets/LeftArrowGrey.png");
    font = createFont("Assets/Fipps-Regular.otf", 32);
    textFont(font);
   }

  void Mainmenu()
   {
    if(init)
    {
      //Se muestra la interfaz principal del menú
      image(logo, 51, 139, 722, 460);
      fill(0);
      strokeWeight(20);
      textSize(32);
      noFill();
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
          sound.play();
          textSize(15);
          start = true;
          puntaje = true;
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
          sound.play();
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
      strokeCap(RECT);
      if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 60)
      {
        strokeWeight(0);
        fill(0, 120);
        rect(10, 10, 50, 50);
        if(mousePressed)
        {
          tutorial = false;
          init = true;
          controls = false;
          instructions = false;
          I1 = false;
          I2 = false;
        }
      }
      if(controls)
      {
        fill(0); 
        strokeWeight(5);
        line(640, 227.43, 640, 620.07);
        textSize(48);
        text("CONTROLES", 443.13, 122.5);
        textSize(36);
        text("HUMANO", 213.31, 271.21 );  
        text("VIRUS", 882.78, 271.19); 
        image(ctrlH, 52.54, 322.07, 534.17, 276.77);    
        image(ctrlV, 692.57, 322.07, 534.17, 276.77);
        textSize(24);
        text("1", 1173.72, 710); 
        text("/2", 1193.98, 710);
        image(leftAG, 1138.61, 676.06, 20.37, 33.94);
        image(rightA, 1250.85, 676.06, 20.37, 33.94);
        if(mouseX > 1250.85  && mouseX < 1271.22 && mouseY > 676.06 && mouseY < 710)
        {
          if(mousePressed)
          {
            controls = false;
            instructions = true;
            I1 = true;
          }
        }
      }
      if(instructions)
      {
        fill(0);
        textSize(48);
        text("INSTRUCCIONES DE JUEGO", 159.61, 122.5);
        textSize(24);
        text("2/2", 1168.98, 710);
        image(rightAG, 1250.85, 676.06, 20.37, 33.94);
        image(leftA, 1138.61, 676.06, 20.37, 33.94);
        if(mouseX > 1138.61 && mouseX < 1158.98 && mouseY > 676.06 && mouseY < 710)
        {
          if(mousePressed)
          {
            controls = true;
            instructions = false;
            I1 = false;
            I2 = false;
          }
        }
        if(I1)
        {
          textSize(20);
          text("A lo largo del mapa estarán distribuidos varios", 246.54, 215.41);
          text("ítems que te ayudarán a obtener puntos", 303.53, 265.41);  
          image(img2, 570.7, 312.17, 47.79, 77.5);
          image(img4, 654.13, 328.82, 76.22, 58.07);
          textSize(12);
          text("(ítems que dan puntos)", 534.25, 419.15);  
          textSize(20);
          text("Tendrás que obtener dos de los tres ítems antes de que se acabe", 84.86, 504.88);
          text("el tiempo o seas infectado por el covid si este te toca, si no llegas", 75.59, 554.88);  
          text("a la meta con por lo menos dos ítems no lograrás ganar.", 169.29, 604.88);
          image(upAG, 623.01, 634.7, 33.94, 20.37);
          image(downA, 623.01, 674.7, 33.94, 20.37);   
          if(mouseX > 623.01 && mouseX < 656.95 && mouseY > 674.7 && mouseY < 695.07)
          {
            if(mousePressed)
            {
              I1 = false;
              I2 = true;
            }
          }
        }
        if(I2)
        {
          textSize(20);
          text("Si el tiempo es tu problema y te quedas corto, podrás recoger los", 97.49, 306.49);
          text("relojes de arena para que el tiempo sea aumentado, pero tendrás", 97.31, 356.49);
          text("que ser rápido ya que, si el covid obtiene los relojes de arena", 127.42, 406.49);
          text("primero que tú, el tiempo se reducirá.", 338.29, 456.49);  
          image(downAG, 623.01, 674.7, 33.94, 20.37); 
          image(upA, 623.01, 634.7, 33.94, 20.37);
          if(mouseX > 623.01 && mouseX < 656.95 && mouseY > 634.7 && mouseY < 655.07)
          {
            if(mousePressed)
            {
              I1 = true;
              I2 = false;
            }
          }
        }
      }
    }
  }
}
