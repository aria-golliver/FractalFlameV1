void setup() {
  size(wid, hei);
  background(0);
  frameRate(0xFFFFFFFF);
}

void draw() {
  loadPixels();

  updatePixels();
}

