class Tiempo {
  
 int s = 6000;

 void tiempo() {
 
  if (s <= 6000 && s>0){
    
  fill (0); text ("TIEMPO", -120, 30);
  text ("0:"+s, -119, 50);
  s = s - 2;
  }//Temporizador de un minuto que va descontando cada segundo
  
  else if(s==0) {
    
   background(0);
   fill(255);
   clear();
   text("EL HUMANO HA SIDO ENCERRADO CON EL COVID",-50,170);
   noLoop();
   }//Cuando el tiempo llegue a 0 se acaba el juego y el jugador 1 pierde
    
   if ((xpos>119&&xpos<130)&&(ypos>49&&ypos<70)){ s=6000; x2=-100; y2=290; }
   if ((xpos>259&&xpos<270)&&(ypos>249&&ypos<270)){ s = 6000; x4=-55; y4=290; }
   //Si el humano recoge algun item de tiempo, este se reinicia a un minuto nuevamente
   
   if ((x2pos>119&&x2pos<130)&&(y2pos>49&&y2pos<70)){ s = 3000; x2=390; y2=290; }
   if ((x2pos>259&&x2pos<270)&&(y2pos>249&&y2pos<270)){ s = 3000; x4=375; y4=290; }
   //Si el covid recoge algun item de tiempo, este se reinicia en 30 segundos
   }
   
}
