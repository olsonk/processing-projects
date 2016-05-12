int frame = 0;

void setup() {
  size(100, 100);
  cursor(CROSS);
}

void draw() {
  if (frame > 120) { // If 120 frames since the mouse
    noLoop(); // was pressed, stop the program
    background(0); // and turn the background black.
  } else { // Otherwise, set the background
    background(204); // to light gray and draw lines
    line(mouseX, 0, mouseX, height); // at the mouse position
    line(0, mouseY, width, mouseY);
    frame++;
  }
}

void mousePressed() {
  loop();
  frame = 0;
}