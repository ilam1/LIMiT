Ball[] balls;
boolean reactionStarted;

void setup() {
  size(600, 600);
  reactionStarted = false; 
  balls = new Ball[25];
  for (int i=0; i < balls.length; i++)
    balls[i] = new Ball();
}

void draw() {
  background(0);
  for (int i = 0; i < balls.length; i++) {
    balls[i].move();
    balls[i].display();
  }
}

boolean collision (Ball ba) {
  return dist(ba.x, ba.y, this.x, this.y) <= (ba.rad + this.rad)
}

void mouseClicked() {
  if (! reactionStarted ) {
    balls[0].x = mouseX;
  }
  else {
    if (balls[0].collision() //Needs a parameter
      
}
