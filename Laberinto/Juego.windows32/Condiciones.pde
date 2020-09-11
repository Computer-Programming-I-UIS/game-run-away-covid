class Condiciones
{
  void ResetDead()
  {
    if(resetdead)
    {
      background(0);
      textSize(20);
      fill(209, 4, 4);
      text("EL COVID HA INFECTADO AL HUMANO", 346.56, 214.83);
      text("!PERDISTE¡", 544.48, 254.82);
      text("PRESIONA 'R' PARA VOLVER A JUGAR", 361.35, 498.05);
      text("PRESIONA 'X' PARA VOLVER AL MENÚ", 361.35, 541.96);
      if(key == 'r' || key == 'R')
      {
    
        resetdead = false;
        start = true;
        p1 = 0;
        p2 = 0;
        p3 = 0;
        p4 = 0;
        p5 = 0;
        p6 = 0;
        s = 6000;
      }
      if(key == 'x' || key == 'X')
      {
        resetdead = false;
        init = true;
      }
    }
  }
  
  void ResetWin()
  {
    if(resetwin)
    {
      textSize(20);
      text("EL HUMANO HA GANADO", 448.12, 234.83);
      text("PRESIONA 'R' PARA VOLVER A JUGAR", 361.35, 498.05);
      text("PRESIONA 'X' PARA VOLVER AL MENÚ", 361.35, 541.96);
      if(key == 'r' || key == 'R')
      {
   
        resetwin = false;
        start = true;
        p1 = 0;
        p2 = 0;
        p3 = 0;
        p4 = 0;
        p5 = 0;
        p6 = 0;
        s = 6000;
      }
      if(key == 'x' || key == 'X')
      {
        resetwin = false;
        init = true;
      }
    }
  }
  
  void ResetNoTime()
  {
    if(resetnotime)
    {
      background(0);
      fill(255);
      textSize(20);
      text("EL HUMANO HA QUEDADO ATRAPADO CON EL COVID", 237.18, 233.53);
      text("PRESIONA 'R' PARA VOLVER A JUGAR", 361.35, 498.05);
      text("PRESIONA 'X' PARA VOLVER AL MENÚ", 361.35, 541.96);
      if(key == 'r' || key == 'R')
      {
     
        resetnotime = false;
        start = true;
        p1 = 0;
        p2 = 0;
        p3 = 0;
        p4 = 0;
        p5 = 0;
        p6 = 0;
        s = 6000;
      }
      if(key == 'x' || key == 'X')
      {
        resetnotime = false;
        init = true;
      }
    }
  }
}
