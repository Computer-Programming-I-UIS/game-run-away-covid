class Menu 
{
  PImage logo, logo2, back, close;
  PFont font;
  
  Menu() 
   {
    logo = loadImage("Assets/RunAwayCovid.png");
    logo2 = loadImage("Assets/ESRB.png");
    back = loadImage("Assets/Back.png");
    font = createFont("Assets/Fipps-Regular.otf", 32);
    close = loadImage("Assets/Close.png");
    textFont(font);
   }

  void Mainmenu()
   {
    if(init)
    {
      image(logo, 51, 139, 722, 460);
      strokeWeight(20);
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
        fill(0, 120);
        rect(880, 228.2, 322, 111);
        if(mousePressed)
        {
          tutorial = true;
          init = false;
        }
      }
      if(mouseX > 880 && mouseX < 1202 && mouseY > 379.2 && mouseY < 490.2)
      {
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
      image(logo2, (width/2)-75, (height/2)+70, 150, 225);
    }
    if(tutorial)
    {
      image(close, 10, 10, 50, 50);
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
    }
  }
}
