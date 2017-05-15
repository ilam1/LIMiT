Ball[] balls;
boolean reactionStarted = false;

void setup() {
  size(600, 600);
  background(0);
  balls = new Ball[25];
  for (int i=0; i < balls.length; i++)
    balls[i] = new Ball();
}

void draw() {
  clear();
  for (Ball x : balls){
    x.update();
    for (Ball target : balls){
      if (x != target && x.state == 1 && target.state > 1 && x.hitBall(target)){
        x.setState(2);
      }
    }
  }
}

void mouseClicked() {
  if (! reactionStarted ) {
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    balls[0].setState(2);
    reactionStarted = true;
  }
}