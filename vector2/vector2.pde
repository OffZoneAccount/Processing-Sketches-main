PVector mouse;
PVector center;

void setup() {
    size(800, 800);
}

void draw() {
    background(255);

    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width / 2, height / 2);

    stroke(200);
    strokeWeight(4);
    line(0, 0, mouse.x, mouse.y);
    line(0, 0, center.x, center.y);

    mouse.sub(center);
    stroke(0);
    //translate(width / 2, height / 2);
    //line(0, 0, mouse.x, mouse.y);
    line(width / 2, height / 2, mouse.x, mouse.y);
}