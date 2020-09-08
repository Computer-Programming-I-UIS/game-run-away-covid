class Movimiento {
  
    void movimiento(){ //Movimiento de los personajes y deteccion de las paredes
    
    if(n==0){
      if(key == 'w'||key == 'W'){
        if(maze[xpos/10][(ypos-10)/10]!=1){
        xpos+=0; ypos+=-10;
        }
      }else if (key == 's'||key == 'S'){
        if(maze[xpos/10][(ypos+20)/10]!=1){    
        xpos+=0; ypos+=10; 
        }
      }else if (key == 'd'||key == 'D'){
        if((maze[(xpos+10)/10][(ypos+10)/10]!=1)&&(maze[(xpos+10)/10][(ypos)/10]!=1)){    
        xpos+=10; ypos+=0;
        }
      }else if (key == 'a'||key == 'A'){
        if((maze[(xpos-10)/10][(ypos+10)/10]!=1)&&(maze[(xpos-10)/10][(ypos)/10]!=1)){
        xpos+=-10; ypos+=0;
        }
      }
      
      if(keyCode == UP){
        if(maze[x2pos/10][(y2pos-10)/10]!=1){
        x2pos+=0; y2pos+=-10;
        }
    }else if (keyCode == DOWN){
      if(maze[x2pos/10][(y2pos+20)/10]!=1){    
        x2pos+=0; y2pos+=10; 
      }
    }else if (keyCode == RIGHT){
      if((maze[(x2pos+10)/10][(y2pos+10)/10]!=1)&&(maze[(x2pos+10)/10][(y2pos)/10]!=1)){    
        x2pos+=10; y2pos+=0;
      }
    }else if (keyCode == LEFT){
      if((maze[(x2pos-10)/10][(y2pos+10)/10]!=1)&&(maze[(x2pos-10)/10][(y2pos)/10]!=1)){
        x2pos+=-10; y2pos+=0;
       }
      }
    }
  }
}
