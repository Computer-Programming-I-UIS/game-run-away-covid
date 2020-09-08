class Puntaje{
  
  void puntaje() 
  {
    fill(0);text("PUNTAJE "+pj, -115, 270);
    fill(0);text("PUNTAJE "+pc, 315, 270);
    pj = p1+p2+p3; //Puntos jugador del humano
    pc = p4+p5+p6; //Puntos jugador del covid
    
      //Condiciones para que el humano obtenga puntos y reubicación de los ítems
      if((xpos>29 && xpos<40) && (ypos>189 && ypos<210))
      { 
        p1 = 100; x1=-115; y1=290; 
      }
      if((xpos>59 && xpos<80) && (ypos>269 && ypos<280))
      { 
        p3 = 100; x3=-85; y3=290; 
      }
      if((xpos>139 && xpos<160) && (ypos>259 && ypos<280))
      { 
        p2 = 100; x5=-70; y5=290; 
      }
      //Condiciones para que el virus obtenga puntos y reubicación de los ítems
      if((x2pos>29 && x2pos<40) && (y2pos>189 && y2pos<210))
      {
        p4 = 100;x1=320; y1=290; 
      }
      if((x2pos>59 && x2pos<80) && (y2pos>269 && y2pos<280))
      {
        p5 = 100;x3=335; y3=290; 
      }
      if((x2pos>139 && x2pos<160) && (y2pos>259 && y2pos<280))
      {
        p6 = 100;x5=350; y5=290; 
      }
    
  
    //Si el covid toca al humano el juego se acaba, ganando asi el covid
    if ((x2pos==xpos)&&(y2pos>ypos-20&&y2pos<ypos+20))
    {
      x1=30; x2=120; x3=65; x4=260; x5=145; y1=192; y2=52; y3=272; y4=252; y5=272;
      //pj = 0;
      //pc = 0;
      start = false;
      resetdead = true;
      xpos=10;ypos=280;x2pos=280;y2pos=10;
      background(255);
      //pc = pmin;
    }
  //Para que el humano gane debe llegar a la meta con 200 puntos, es decir debe coger los items
  if(((xpos>229&&xpos<250)&&(ypos>159&&ypos<180))&&(pj>=pmin))
  {
    x1=30; x2=120; x3=65; x4=260; x5=145; y1=192; y2=52; y3=272; y4=252; y5=272;
    resetwin = true;
    start = false;
    xpos=10;ypos=280;x2pos=280;y2pos=10;
    //background(255);
    //text("EL HUMANO HA GANADO",65, 160);
    //noLoop();
    }
  }  
}
