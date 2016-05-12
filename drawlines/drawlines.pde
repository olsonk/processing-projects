int startX, startY, endX, endY;

void setup() {
  background(100);
  size(500, 400);
  startX = -1;
  startY = -1;
}

void draw() {
  if (endX != -1 && endY != -1) {
    line(startX, startY, endX, endY);
  }
}

void mousePressed() {
    startX = mouseX;
    startY = mouseY;
    endX = -1;
    endY = -1;
}

void mouseReleased() {
    endX = mouseX;
    endY = mouseY;
}