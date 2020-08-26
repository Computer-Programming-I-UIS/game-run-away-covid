class Snake{
  void update(){
    xpos=constrain(xpos, 0, width-scl);
    ypos=constrain(ypos, 0, height-scl);
    x2pos=constrain(x2pos, 0, width-scl);
    y2pos=constrain(y2pos, 0, height-scl);
  }
  void show(){
    fill(93,83,93);rect(xpos,ypos,10,10);//personaje1
    fill(255,165,165);rect(x2pos,y2pos,10,10);//personaje2
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
    image(img3, x4, y4, 9, 17);//item de tapaboca
    image(img4, x5, y5, 10, 8);//item de reloj de arena
  }
}
