void setup() {
    size(640, 640);
    background(255);
    pixelDensity(1);
}

void draw() {
    loadPixels();
    float xoff = 0.00;
    for (int x = 0; x < width; x++) {
        float yoff = 0.00;
        for (int y = 0; y < height; y ++) {
            int index = (x + y * width);
            //float bright = random(255);
            float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
            pixels[index] = color(bright);
            yoff += 0.01;
        }
    xoff += 0.01;
    }
    updatePixels();
}