Circle[] snow;

void setup() {
  size(1024, 768);
  background(25);
  noStroke();
  int num = width / 15;
  snow = new Circle[num];
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new Circle(random(width), random(height), random(height/10), random(-0.8, 0.8), random(100, 200));
  }
}

void draw() {
  background(25);
  for (int i = 0; i < snow.length; i++) {
    snow[i].fall();
    snow[i].display();
  }
}

void mouseDragged() {
  float mouseChangeX = mouseX - pmouseX;
  float mouseChangeY = mouseY - pmouseY;
  for (int i = 0; i < snow.length; i++) {
    snow[i].speed = mouseChangeX + mouseChangeY;
  }
}

class Circle {
  float x, y;
  float radius;
  float speed;
  float alpha;
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  Circle(float xpos, float ypos, float r, float s, float a) {
    x = xpos;
    y = ypos;
    radius = r;
    speed = s;
    alpha = a;
  }
  
  void fall() {
    y += random(-1 * abs(speed), abs(speed));
    x -= random(-1 * abs(speed), abs(speed));
    speed = speed * 0.99;
    //x += random(-1, 1);
    if (y > height) {
      y = 0;
    }
  }
  
  void display() {
    fill(r, g, b, alpha);
    float change = random(0.1, 3);
    alpha -= change;
    radius += change*2;
    if (alpha < 1) {
      x = random(width);
      y = random(height);
      alpha = random(100, 200);
      radius = random(height/10);
      speed = random(-1, 1);
    }
    ellipse(x, y, radius, radius);
  }
}