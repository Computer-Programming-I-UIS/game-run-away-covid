class Personaje
{
  PImage logo;
  PFont font;
  
  Personaje()
  {
    logo = loadImage("Assets/RunAwayCovid.png");
    font = createFont("Assets/Fipps-Regular.otf", 32);
    textFont(font);
  }

  void Mainmenu()
  {
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
  }
}
