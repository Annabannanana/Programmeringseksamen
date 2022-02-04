class Ball{
  int x, y;
  boolean up, right;
  
  Ball(){
    x=20;
    y=450;
    up=true;
    right=true;
  }
  
  void move(){
    
    if(up==true){
      y=int (y-2-changespeed/2);
    }
    
    else{
      y=int (y+changespeed/2); 
    }
     if (right==true){
      x=int(x+1+changespeed);
    }
   
    else{
      x=int(x-1-changespeed);
    }
  }
  
  void bounce(){
    if (get(int(x)-8, int(y))!=color(0)){
      right=true;
    }
    
    if (get(int(x)+8, int(y))!=color(0)){
      right=false;
    }
    
    if (get(int(x), int(y)-8)==color(255, 0, 0)){
      up=false;
    }
    
    if (get(int(x), int(y)+8)==color(255, 0, 0)){
      up=true;
      changespeed+=1.0/4;
    }
  }
  
  void show(){
    fill(247, 226, 47);
    ellipse(x, y, 16, 16);
  }
}
