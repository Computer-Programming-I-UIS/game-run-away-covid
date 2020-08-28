class Menu {
  
  PImage logo, logo2, back;
  PFont font;
  
  Menu() {
    
    logo = loadImage("Assets/RunAwayCovid.png");
    logo2 = loadImage("Assets/ESRB.png");
    back = loadImage("Assets/Back.png");
    font = createFont("Assets/Fipps-Regular.otf", 32);
    textFont(font);
    }

  void Mainmenu(){
    
    if(init){
      
      image(logo, 51, 139, 722, 460);
      strokeWeight(20);
      fill(255);
      rect(887, 124, 322, 111);
      rect(887, 312, 322, 111);
      rect(887, 500, 322, 111);
      fill(0);
      text("COMENZAR", 918, 202);
      text("CRÉDITOS", 931, 396);
      text("SALIR", 983, 577);
      
      if(mouseX > 887 && mouseX < 1209 && mouseY > 124 && mouseY < 235){
        
        fill(0, 120);
        rect(887, 124, 322, 111);
        
        if(mousePressed){
          
          textSize(15);
          start = true;
          init = false;
          }
        }
        
      if(mouseX > 887 && mouseX < 1209 && mouseY > 312 && mouseY < 423){
        
        fill(0, 120);
        rect(887, 312, 322, 111);
        
        if(mousePressed){
          
          crets = true;
          init = false;
          }
        }
        
      if(mouseX > 887 && mouseX < 1209 && mouseY > 500 && mouseY < 611){
        
        fill(0, 120);
        rect(887, 500, 322, 111);
        
        if(mousePressed){
          
          exit();
          }
        }
      }
      
    if(crets) {
      
      image(back, 10, 10, 50, 50);
      
      if(mouseX > 10 && mouseX < 60 && mouseY > 10 && mouseY < 60){
        
        strokeWeight(0);
        fill(0, 120);
        rect(10, 10, 50, 50);
        
        if(mousePressed){
          
          crets = false;
          init = true;
          }
        }
        
      image(logo, (width/2)-142, 68, 284, 180);
      fill(0);
      text("Cristian Camilo Alvarino Castro", (width/2)-409, (height/2)-30);
      text("Andrés David Baena Atencio", (width/2)-368, (height/2)+20);
      image(logo2, (width/2)-75, (height/2)+70, 150, 225);
    }
  }
}
