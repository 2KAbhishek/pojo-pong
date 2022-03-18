import java.util.Random;

class Ball {
    float x = width / 2;
    float y = height / 2;
    float r = 10;
    Random rand = new Random();
    float xVelocity = rand.nextBoolean() ? 4 : - 4;
    float yVelocity = random(-10, 10);

    Ball() {
        reset("");
    }

    void checkCollision(Paddle p) {
        if(p.side.equals("left")) {
            if (y - r < p.y + p.pHeight / 2 && y + r > p.y - p.pHeight / 2
               && x - r< p.x + p.pWidth / 2) {
                if (x > p.x) {
                    float diff = y - (p.y - p.pHeight / 2);
                    float rad = radians(45);
                    float angle = map(diff, 0, p.pHeight, -rad, rad);
                    xVelocity = 5 * cos(angle);
                    yVelocity = 5 * sin(angle);
                    x = p.x + p.pWidth / 2 + r;
                }
            }
        } else if (p.side.equals("right")) {
            if(y - r < p.y + p.pHeight / 2 && y + r > p.y - p.pHeight / 2 &&
                x + r > p.x - p.pWidth / 2) {
                if (x < p.x) {
                    float diff = y - (p.y - p.pHeight / 2);
                    float angle = map(diff, 0, p.pHeight, radians(225), radians(135));
                    xVelocity = 5 * cos(angle);
                    yVelocity = 5 * sin(angle);
                    x = p.x - p.pWidth / 2 - r;
                }
            }
        }
    }

    void update() {
        x += xVelocity;
        y += yVelocity;
    }

    void reset(String edge) {
        y = height / 2;
        float angle = random( -PI / 4, PI / 4);
        yVelocity = 5 * sin(angle);
        trail.clear();

        switch(edge) {
            case "left":
                x = 60;
                xVelocity = 4 * cos(angle);
                break;
            case "right":
                x = width - 60;
                xVelocity = -4 * cos(angle);
                break;
            default:
            x = width / 2;
            xVelocity = 4 * cos(angle);
        }
    }

    void edges() {
        if (y < 0 || y > height) {
            yVelocity *= -1;
        }

        if (x - 40 < 0) {
            playerOne--;
            reset("left");
            if (playerOne <= 0) {
                textSize(32);
                text("Player Two Wins", width / 2 - 100, height / 2);
                noLoop();
            }
            noLoop();
        }

        if (x > width - 40) {
            playerTwo--;
            reset("right");
            if (playerTwo <= 0) {
                textSize(32);
                text("Player One Wins", width / 2 - 100, height / 2);
                noLoop();
            }
            noLoop();
        }
    }

    void show() {
        fill(22, 136, 240);
        ellipse(x, y, 20, 20);
    }
}
