Ball ball;
Paddle left;
Paddle right;

int playerOne;
int playerTwo;

ArrayList<PVector> trail = new ArrayList<PVector>();

void setup() {
    size(800, 600);
    ball = new Ball();
    left = new Paddle("left");
    right = new Paddle("right");
    playerOne = 3;
    playerTwo = 3;
    noLoop();
}

void draw() {
    background(15);
    ball.checkCollision(left);
    ball.checkCollision(right);

    left.show();
    right.show();
    left.update();
    right.update();

    ball.update();
    ball.edges();
    ball.show();
    drawScore();
    drawTrail();
}

void drawScore() {
    fill(70, 200, 100);
    textSize(32);
    text(playerOne, 32, 40);
    text(playerTwo, width - 64, 40);
}

void drawTrail() {
    PVector ballPos = new PVector(ball.x, ball.y);
    trail.add(ballPos);

    if (trail.size() > 20) {
        trail.remove(0);
    }

    for (int i = 0; i < trail.size(); i++) {
        noStroke();
        fill(22 + i * 10, 136 + i * 5, 235 + i);
        PVector curBallPos = trail.get(i);
        ellipse(curBallPos.x, curBallPos.y, i, i);
    }
}

void keyReleased() {
  left.move(0);
  right.move(0);
}

void keyPressed() {
    switch(key) {
        case 'w':
            left.move(-10);
            break;
        case 's':
            left.move(10);
            break;
        case 'k':
            right.move(-10);
            break;
        case 'j':
            right.move(10);
            break;
        case ' ':
            loop();
            if ((playerOne <= 0) || (playerTwo <= 0)) {
                setup();
            }
            break;
    }
}
