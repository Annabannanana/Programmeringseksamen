boolean gameover=false, right=false, left=false, d=false, a=false;
int player1Score=0;
int player2Score=0;
float changespeed=0;


Paddle bottom;
Ball pongball;
Paddle top;
PowerUp box;

//setup
void setup(){
  frameRate(100);
  noStroke();
  pongball = new Ball();
  bottom = new Paddle();
  top = new Paddle();
  box = new PowerUp();
  size(700,500);
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
rectMode(CENTER);

  if (gameover==false){
    background(0);
    bottom.show1();
    top.show2();
    
    if (left==true){
      bottom.moveleft();
    }
    
    if (right==true){
      bottom.moveright();
    }
    
    if (a==true){
      top.moveTleft();
    }
    
    if (d==true){
      top.moveTright();
    }
    
    box.Boxs();
    pongball.move();
    pongball.bounce();
    pongball.show();
   if(dist(pongball.x,pongball.y, box.pux,box.puy)<40){
   box.powerhit();
   }

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
    text("                     Player 1's Score: "+player1Score, 15, 290);
    text("                     Player 2's Score: "+player2Score, 15, 330);
    textSize(30);
    text("          GAME OVER - CLICK TO PLAY AGAIN.", 15, 250);

    }


    if (mousePressed==true){
      pongball.x=int(random(300, 400));
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
