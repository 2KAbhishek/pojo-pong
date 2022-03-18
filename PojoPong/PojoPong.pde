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
    left.show();
    right.show();

    ball.update();
    ball.edges();
    ball.show();

    PVector ballPos = new PVector(ball.x, ball.y);
    trail.add(ballPos);

    if (trail.size() > 20) {
        trail.remove(0);
    }

    for (int i = 0; i < trail.size(); i++) {
        noStroke();
        fill(22, 136 - i * 5, 240);
        PVector curBallPos = trail.get(i);
        ellipse(curBallPos.x, curBallPos.y, i, i);
    }
}

void keyPressed() {
    switch(key) {
        case 'w':
            left.move( -10);
            break;
        case 's':
            left.move(10);
            break;
        case 'k':
            right.move( -10);
            break;
        case 'j':
            right.move(10);
            break;
        case 't':
            if ((playerOne == 3) && (playerTwo == 3)) {
                loop();
            }
            break;
        case 'c':
            loop();
            if ((playerOne > 0) && (playerTwo > 0)) {
                break;
            }
            case'n':
            loop();
            setup();
            break;
    }
}
