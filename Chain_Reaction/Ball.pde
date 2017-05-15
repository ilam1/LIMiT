class Ball {
  float x, y, rad, dx, dy;
  color c;
  int state;

  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    x = random((width - rad) + rad/2);
    y = random((height - rad) + rad/2);
    rad = 15;
    c = color(r, g, b);
    dx = random(8);
    dy = random(8);
    state = 1;
  }
  
  public void setState(int s) {
    state = s;
  }

  public int getState() {
    return state;
  }

  void move() {
    x += dx;
    y += dy;
  }

  void update() {
    if (state != 0) {
      if (state == 1) {
        bounce();
        move();
      } else {
        expanD();
      }
      fill(c);
      ellipse (x, y, rad, rad);
    }
  }

  void expanD() {
    if (state == 2) {
      if (rad >= 100) {
        state = 3;
      } 
      else {
        rad++;
      }
    } 
    else {
      if (rad <= 0) {
        state = 0;
      } 
      else {
        rad--;
      }
    }
  }

  boolean hitBall(Ball target) {
    if ((rad + target.rad)/2 > distance(this, target)) {
      return true;
    }
    return false;
  }

  float distance(Ball target1, Ball target2) {
    return sqrt(sq(target1.x - target2.x) + sq(target1.y - target2.y));
  }

  void bounce() {
    if (y > height || y < 0)
      dy = -dy;
    if (x > width || x < 0)
      dx = -dx;
  }
}