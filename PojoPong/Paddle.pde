class Paddle {
  float x;
  float y = height / 2;
  float pHeight = 100;
  float pWidth = 20;
  String side;

  Paddle(float x_, String side_) {
    x = x_;
    side = side_;
  }

  void show() {
    fill(150, 170, 190);
    rectMode(CENTER);
    rect(x, y, pWidth, pHeight);
  }
}
