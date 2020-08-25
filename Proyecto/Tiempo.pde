class Tiempo {
  
  int m = 0, s = 5900;

 void tiempo() {
  
 int t = -5900;
  if (t < s && s > 0){
  fill (0); text ("TIEMPO", -130, 30);
  text (m+ ":"+s, -129, 50);
  s = s - 1;
  t = t + 1;
  }//Temporizador de un minuto que va descontando cada segundo
  else if(s==0) {
      background(0);
      fill(255);
      textSize(44);
     clear();
      text("PERDISTE",30,170);
      noLoop();
    }//Cuando el tiempo llegue a 0 se acaba el juego y el jugador 1 pierde
  }
}
