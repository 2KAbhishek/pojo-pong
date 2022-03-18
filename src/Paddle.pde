class Paddle {
    float x;
    float y = height / 2;
    float pHeight = 100;
    float pWidth = 20;
    String side;

    float yChange = 0;

    Paddle(String side_) {
        side = side_;
        if (side.equals("left")) {
            x = pWidth * 2;
        } else if (side.equals("right")) {
            x = width - (pWidth * 2);
        }
    }

    void update() {
        y += yChange;
        y = constrain(y, pHeight / 2, height - pHeight / 2);
}

    void move(float steps) {
        yChange = steps;
    }

    void show() {
        fill(150, 170, 190);
        rectMode(CENTER);
        rect(x, y, pWidth, pHeight);
    }
}
