PVector position;
PVector velocity;

void setup() {
    size(800, 800);

    position = new PVector(50, 50);
    velocity = new PVector(5.5, 5);
}

void draw() {
    background(255);

    position.add(velocity);
    if ((position.x + 20) > width || (position.x - 20) < 0) {
        velocity.x = velocity.x * -1;
    }
    if ((position.y + 20) > height || (position.y - 20) < 0) {
        velocity.y = velocity.y * -1;
    }

    stroke(0);
    fill(127);
    circle(position.x, position.y, 40);
}
