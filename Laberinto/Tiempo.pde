class Tiempo {
  
  int m = 0, s = 6000;

 void tiempo() {
  
 
  if (s <= 6000 && s>0){
  fill (0); text ("TIEMPO", -120, 30);
  text (m+ ":"+s, -119, 50);
  s = s - 2;
 
  }//Temporizador de un minuto que va descontando cada segundo
  else if(s==0) {
      background(0);
      fill(255);
      clear();
      text("EL HUMANO HA SIDO ENCERRADO CON EL COVID",-50,170);
      noLoop();
    }//Cuando el tiempo llegue a 0 se acaba el juego y el jugador 1 pierde
  }
}
