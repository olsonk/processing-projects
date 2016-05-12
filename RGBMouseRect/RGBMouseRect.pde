float r, g, b;
void setup() {
  background(50);
  size(1024, 768);
}

void draw() {
  if (!(mouseX == pmouseX && mouseY == pmouseY)) {
    r = random(255);
  }
  g = map(mouseX, 0, width, 0, 255);
  b = map(mouseY, 0, height, 0, 255);
  fill(r, g, b);
  rect(mouseX, 0, abs(mouseX - pmouseX), height);
}