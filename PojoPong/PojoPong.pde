Ball ball;
Paddle left;
Paddle right;

void setup() {
  size(800, 600);
  ball = new Ball();
  left = new Paddle("left");
  right = new Paddle("right");
}

void draw() {
  background(15);
  ball.update();
  ball.edges();
  ball.show();
  left.show();
  right.show();
}
