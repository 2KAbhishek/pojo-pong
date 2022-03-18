class Paddle {
  float x;
  float y = height / 2;
  float pHeight = 100;
  float pWidth = 20;
  String side;

  Paddle(String side_) {
    side = side_;
    if (side.equals("left")) {
      x = pWidth * 2;
    } else {
      x = width - (pWidth * 2);
    }
  }

  void move(float steps) {
    y += steps;
    y = constrain(y, pHeight/2, height - pHeight/2);
  }

  void show() {
    fill(150, 170, 190);
    rectMode(CENTER);
    rect(x, y, pWidth, pHeight);
  }
}
