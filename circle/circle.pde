float tx = 0;
float ty = 180;

void setup() {
    size(640, 240);
    background(255);
}

void draw() {
    float x = map(noise(tx), 0, 1, 0, width);
    float y = map(noise(ty), 0, 1, 0, height);
    ellipse(x, y, 32, 16);
    circle(x, y - 50, 16);
    tx += random(-0.05,0.05);
    ty += random(-0.05,0.05);
}