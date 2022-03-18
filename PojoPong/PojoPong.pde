Ball ball;
Paddle left;
Paddle right;

int playerOne;
int playerTwo;

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

void keyPressed() {
    switch(key) {
        case 'w':
            left.move( -10);
            break;
        case 's':
            left.move(10);
            break;
        case 'i':
            right.move( -10);
            break;
        case 'k':
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
