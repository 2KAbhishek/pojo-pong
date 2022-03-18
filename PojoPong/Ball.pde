import java.util.Random;

class Ball {
    float x = width / 2;
    float y = height / 2;
    Random rand = new Random();
    float xVelocity = rand.nextBoolean() ? 4 : - 4;
    float yVelocity = (rand.nextInt(10 - 3) + 3) * (rand.nextBoolean() ? 1 : - 1);

    void update() {
        x += xVelocity;
        y += yVelocity;
    }

    void reset(String edge) {
        y = height / 2;
        switch(edge) {
            case "left":
                xVelocity = 4;
                break;
            case "right":
                xVelocity = -4;
                break;
            default:
            x = width / 2;
        }
    }

    void edges() {
        if (y < 0 || y > height) {
            yVelocity *= -1;
        }

        if (x - 40 < 0) {
            reset("left");
        }

        if (x > width - 40) {
            reset("right");
        }
    }

    void show() {
        fill(22, 136, 240);
        ellipse(x, y, 20, 20);
    }
}
