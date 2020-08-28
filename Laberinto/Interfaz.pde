class Interfaz{
  
  void update(){
    
    xpos=constrain(xpos, 0, width-scl);
    ypos=constrain(ypos, 0, height-scl);
    x2pos=constrain(x2pos, 0, width-scl);
    y2pos=constrain(y2pos, 0, height-scl);
  }
  
  void show(){
    
    textSize(10);
    noFill();rect(xpos,ypos,10,20);//personaje1
    noFill();rect(x2pos,y2pos,10,20);//personaje2
    fill(0,255,0);rect(230,170,20,10);//meta
    fill(255,255,0);rect(10,150,20,10); fill(255,255,0);rect(60,60,10,20);//portal 1-2
    fill(54,118,57);rect(10,10,10,20); fill(54,118,57);rect(250,10,10,20);//portal 3-4
    fill(255,0,0);rect(30,60,10,20); fill(255,0,0);rect(220,280,10,20);//portal 5-6
    fill(0,0,255);rect(80,120,10,20); fill(0,0,255);rect(110,10,10,20);//portal 7-8
    fill(0,255,255);rect(110,100,10,20); fill(0,255,255);rect(90,280,10,20);//portal 9-10
    fill(255,0,255);rect(40,280,10,20); fill(255,0,255);rect(210,40,10,20);//portal 11-12
    fill(252,186,192);rect(190,50,10,20); fill(252,186,192);rect(170,280,10,20);//portal 13-14
    fill(170,255,175);rect(170,250,10,20); fill(170,255,175);rect(200,210,10,20);//portal 15-16
    fill(255,145,0);rect(100,250,10,20); fill(255,145,0);rect(190,290,20,10);//portal 17-18
    fill(91,144,149);rect(110,240,20,10); fill(91,144,149);rect(180,190,20,10);//portal 19-20
    fill(249,255,98);rect(90,140,10,20); fill(249,255,98);rect(240,130,20,10);//portal 19-20

    image(img2, x1, y1, 10, 16);//item de gel antibacterial
    image(img3, x2, y2, 9, 17);//item de reloj de arena
    image(img4, x3, y3, 10, 8);//item de tapaboca
    image(img3, x4, y4, 9, 17);//item de reloj de arena
    image(img4, x5, y5, 10, 8);//item de tapaboca
    
    image(img, xpos, ypos, 10, 20);//Humano
    image(img1, x2pos, y2pos, 10, 20);//Covid
    
    //Entrada y salida de los personajes por los portales, en ambas direcciones
    
    if ((xpos>9&&xpos<30)&&(ypos>149&&ypos<160)){xpos = 70; ypos = 60; }else if ((xpos>59&&xpos<70)&&(ypos>59&&ypos<80)){xpos = 10; ypos = 160; }
    else if ((xpos>9&&xpos<20)&&(ypos>9&&ypos<30)){xpos = 240; ypos = 10; }else if ((xpos>249&&xpos<260)&&(ypos>9&&ypos<30)){xpos = 20; ypos = 10; }
    else if ((xpos>29&&xpos<40)&&(ypos>59&&ypos<80)){xpos = 230; ypos = 280; }else if ((xpos>219&&xpos<230)&&(ypos>279&&ypos<300)){xpos = 20; ypos = 60; }
    else if ((xpos>79&&xpos<90)&&(ypos>119&&ypos<140)){xpos = 120; ypos = 10; }else if ((xpos>109&&xpos<120)&&(ypos>9&&ypos<30)){xpos = 70; ypos = 120; }
    else if ((xpos>109&&xpos<120)&&(ypos>99&&ypos<120)){xpos = 80; ypos = 280; }else if ((xpos>89&&xpos<100)&&(ypos>279&&ypos<300)){xpos = 120; ypos = 100; }
    else if ((xpos>39&&xpos<50)&&(ypos>279&&ypos<300)){xpos = 220; ypos = 40; }else if ((xpos>209&&xpos<220)&&(ypos>39&&ypos<60)){xpos = 50; ypos = 280; }
    else if ((xpos>189&&xpos<200)&&(ypos>49&&ypos<70)){xpos = 160; ypos = 280; }else if ((xpos>169&&xpos<180)&&(ypos>279&&ypos<300)){xpos = 180; ypos = 50; }
    else if ((xpos>169&&xpos<180)&&(ypos>249&&ypos<270)){xpos = 190; ypos = 210; }else if ((xpos>199&&xpos<210)&&(ypos>209&&ypos<230)){xpos = 160; ypos = 250; }
    else if ((xpos>89&&xpos<100)&&(ypos>139&&ypos<160)){xpos = 240; ypos = 110; }else if ((xpos>239&&xpos<260)&&(ypos>119&&ypos<140)){xpos = 100; ypos = 140; }
    else if ((xpos>99&&xpos<110)&&(ypos>249&&ypos<270)){xpos = 190; ypos = 270; }else if ((xpos>189&&xpos<210)&&(ypos>279&&ypos<300)){xpos = 110; ypos = 250; }
    else if ((xpos>109&&xpos<130)&&(ypos>239&&ypos<250)){xpos = 180; ypos = 170; }else if ((xpos>179&&xpos<200)&&(ypos>179&&ypos<200)){xpos = 110; ypos = 250; }
    
    if ((x2pos>9&&x2pos<30)&&(y2pos>149&&y2pos<160)){x2pos = 70; y2pos = 60; }else if ((x2pos>59&&x2pos<70)&&(y2pos>59&&y2pos<80)){x2pos = 10; y2pos = 160; }
    else if ((x2pos>9&&x2pos<20)&&(y2pos>9&&y2pos<30)){x2pos = 240; y2pos = 10; }else if ((x2pos>249&&x2pos<260)&&(y2pos>9&&y2pos<30)){x2pos = 20; y2pos = 10; }
    else if ((x2pos>29&&x2pos<40)&&(y2pos>59&&y2pos<80)){x2pos = 230; y2pos = 280; }else if ((x2pos>219&&x2pos<230)&&(y2pos>279&&y2pos<300)){x2pos = 20; y2pos = 60; }
    else if ((x2pos>79&&x2pos<90)&&(y2pos>119&&y2pos<140)){x2pos = 120; y2pos = 10; }else if ((x2pos>109&&x2pos<120)&&(y2pos>9&&y2pos<30)){x2pos = 70; y2pos = 120; }
    else if ((x2pos>109&&x2pos<120)&&(y2pos>99&&y2pos<120)){x2pos = 80; y2pos = 280; }else if ((x2pos>89&&x2pos<100)&&(y2pos>279&&y2pos<300)){x2pos = 120; y2pos = 100; }
    else if ((x2pos>39&&x2pos<50)&&(y2pos>279&&y2pos<300)){x2pos = 220; y2pos = 40; }else if ((x2pos>209&&x2pos<220)&&(y2pos>39&&y2pos<60)){x2pos = 50; y2pos = 280; }
    else if ((x2pos>189&&x2pos<200)&&(y2pos>49&&y2pos<70)){x2pos = 160; y2pos = 280; }else if ((x2pos>169&&x2pos<180)&&(y2pos>279&&y2pos<300)){x2pos = 180; y2pos = 50; }
    else if ((x2pos>169&&x2pos<180)&&(y2pos>249&&y2pos<270)){x2pos = 190; y2pos = 210; }else if ((x2pos>199&&x2pos<210)&&(y2pos>209&&y2pos<230)){x2pos = 160; y2pos = 250; }
    else if ((x2pos>89&&x2pos<100)&&(y2pos>139&&y2pos<160)){x2pos = 240; y2pos = 110; }else if ((x2pos>239&&x2pos<260)&&(y2pos>119&&y2pos<140)){x2pos = 100; y2pos = 140; }
    else if ((x2pos>99&&x2pos<110)&&(y2pos>249&&y2pos<270)){x2pos = 190; y2pos = 270; }else if ((x2pos>189&&x2pos<210)&&(y2pos>279&&y2pos<300)){x2pos = 110; y2pos = 250; }
    else if ((x2pos>109&&x2pos<130)&&(y2pos>239&&y2pos<250)){x2pos = 180; y2pos = 170; }else if ((x2pos>179&&x2pos<200)&&(y2pos>179&&y2pos<200)){x2pos = 110; y2pos = 250; }
    
    }
  }
