class Ball{
  int x, y, savedtime, starttime,passedtime;
  boolean up, right, hit;
  float pux = -50;
  float puy = -50;


  
  Ball(){
    x=20;
    y=450;

  }
  
  void move(){
    
    if(up==true){
      y=int(y-2-changespeed/2);
    }
    
    else{
      y=int(y+changespeed/2); 
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
    
    if (get(int(x), int(y)-8)==color(255)){
      up=false;
       changespeed+=0.3;
    }
    
    if (get(int(x), int(y)+8)==color(255)){
      up=true;
      changespeed+=0.3;
    }
  }
  
  
  void show(){
    rectMode(CENTER);
    fill(247, 226, 47);
    ellipse(x, y,16,16);
  }
}
