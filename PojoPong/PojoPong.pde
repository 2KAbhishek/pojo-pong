Ball ball;

void setup() {
  size(800, 600);
  ball = new Ball();
}

void draw() {
  background(15);
  ball.update();
  ball.edges();
  ball.show();
}
