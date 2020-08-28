class Tiempo {
  
  int m = 0, s = 5900;

 void tiempo() {
  
<<<<<<< HEAD:Laberinto/Tiempo.pde
 
  if (s <= 6000 && s>0){
  fill (0); text ("TIEMPO", -120, 30);
  text (m+ ":"+s, -119, 50);
  s = s - 2;
 
=======
 int t = -5900;
  if (t < s && s > 0){
  fill (0); text ("TIEMPO", -130, 30);
  text (m+ ":"+s, -129, 50);
  s = s - 1;
  t = t + 1;
>>>>>>> parent of 6d8a18c... UpdatePro:Proyecto/Tiempo.pde
  }//Temporizador de un minuto que va descontando cada segundo
  else if(s==0) {
      background(0);
      fill(255);
<<<<<<< HEAD:Laberinto/Tiempo.pde
      clear();
      text("EL HUMANO HA SIDO ENCERRADO CON EL COVID",-50,170);
=======
      textSize(44);
     clear();
      text("PERDISTE",30,170);
>>>>>>> parent of 6d8a18c... UpdatePro:Proyecto/Tiempo.pde
      noLoop();
    }//Cuando el tiempo llegue a 0 se acaba el juego y el jugador 1 pierde
  }
}
