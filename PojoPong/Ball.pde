class Ball {
  float x = width / 2;
  float y = height / 2;
  float xVelocity = 4;
  float yVelocity = 1;

  void update() {
    x += xVelocity;
    y += yVelocity;
  }

  void reset(String edge) {
    y = height / 2;
    switch(edge) {
    case "left":
      x = 0 + 30;
      break;
    case "right":
      x = width - 30;
      break;
    default:
      x = width / 2;
    }
  }

  void edges() {
    if (y < 0 || y > height) {
      yVelocity *= -1;
    }

    if (x < 0) {
      reset("left");
    }

    if (x > width) {
      reset("right");
    }
  }

  void show() {
    fill(22, 136, 240);
    ellipse(x, y, 20, 20);
  }
}
