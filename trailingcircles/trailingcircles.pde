int num = 75;
int[] x = new int[num];
int[] y = new int[num];
int c = 255;

void setup() { 
  size(500, 500);
  noStroke();
  fill(c, 102);
}

void draw() {
  background(0);
  fill(c, c/2, c*2, 102);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  // Draw the circles
  for (int i = num-1; i > 0; i--) {
    ellipse(x[i], y[i], i, i);
  }
}

void mousePressed() {
  c = int(random(255));
}