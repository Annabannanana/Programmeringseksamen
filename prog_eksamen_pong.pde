boolean gameover=false, right=false, left=false, d=false, a=false;
int player1Score=0;
int player2Score=0;
float changespeed=0;

Paddle bottom;
Ball pongball;
Paddle top;

//setup
void setup(){
  frameRate(100);
  noStroke();
  pongball = new Ball();
  bottom = new Paddle();
  top = new Paddle();
  top.Y = 0;
  size(500,500);
}

//buttons working for both players
void keyPressed()
{
  if (keyCode == LEFT){
    left = true;
  }
  if (keyCode == RIGHT){
    right = true;
  }
  if (key == 'a'){
    a=true;
  }
  if (key == 'd' ){
    d=true;
  }
}

void keyReleased()
{
  if (keyCode == LEFT){
    left = false;
  }
  if (keyCode==RIGHT){
    right = false;
  }
  if (key=='a'){
    a=false;
  }
  if (key=='d'){
    d=false;
  }
}

void draw(){

  if (gameover==false){
    background(0);
    bottom.show();
    top.show();
    
    if (left==true){
      bottom.moveleft();
    }
    
    if (right==true){
      bottom.moveright();
    }
    
    if (a==true){
      top.moveleft();
    }
    
    if (d==true){
      top.moveright();
    }
    pongball.move();
    pongball.bounce();
    pongball.show();
    
    if (pongball.y<-8){
      gameover=true;
      player2Score++;
    }

    if (pongball.y>508){
      gameover=true;
      player1Score++;
    }
  }
  else {
    background(0);
    fill(255, 0, 0);
    changespeed=0;
    textSize(18);
    text("Top Player's Score: "+player1Score, 15, 290);
    text("Bottom Player's Score: "+player2Score, 15, 330);
    textSize(36);
    text("GAME OVER - CLICK TO PLAY AGAIN.", 15, 250);
    
    
    if (mousePressed==true){
      pongball.x=int(random(200, 300));
      pongball.y=int(random(200, 300));
      int xdirection=int(random(2));
      int ydirection=int(random(2));
     
      if (xdirection==0){
        pongball.right=true;
      }
      else{
        pongball.right=false;
      }
      if (ydirection==0){
        pongball.up=true;
      }
      else{
        pongball.up=false;
      }
      
      gameover=false;
    }
  }
}
