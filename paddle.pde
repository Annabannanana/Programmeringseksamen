int x;
int y;
  
class Paddle{

  
  Paddle(){
    x=250;
    y=496;
    }
  
  void show(){
    fill(255);
    rect(x, y, 60, 4);
  }
  
  void moveleft(){
    if (x>=0)
    {
      x-=5;
    }
  }
  
  void moveright(){
    if (x<=440)
    {
      x+=5;
    }
  }
}
