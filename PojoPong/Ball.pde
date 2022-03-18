class Ball {
  float x = width / 2;
  float y = height / 2;
  float xVelocity = 4;
  float yVelocity = 1;

  void update() {
    x += xVelocity;
    y += yVelocity;
  }    

  void show() {
    fill(22, 136, 240);
    ellipse(x, y, 20, 20);
  }
}
