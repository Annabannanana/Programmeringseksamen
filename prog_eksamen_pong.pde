// overordnet stuff
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
  top.y = 0;
  size(500,500);
}
