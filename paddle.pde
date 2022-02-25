int x;
int y;
int tx;
int ty;

class Paddle{

  
  Paddle(){
    x=350;
    y=497;
    tx=350;
    ty=3;
    }
  
  void show1(){
    rectMode(CENTER);
    fill(255);
    rect(x, y, 60, 6);
  }
  void show2(){
    rectMode(CENTER);
    fill(255);
    rect(tx, ty, 60, 6);
  }
  
  void moveleft(){
    if (x>=30)
    {
      x-=7;
    }
  }
  
  void moveright(){
    if (x<=670)
    {
      x+=7;
    }
  }
  void moveTleft(){
    if (tx>=30)
    {
      tx-=7;
    }
  }
  
  void moveTright(){
    if (tx<=670)
    {
      tx+=7;
    }
  }
}
