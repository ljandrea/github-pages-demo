int x = mouseX;
int y = mouseY;

void setup() {
  size(500, 500);
  background(0);
  frameRate(100);
}

void draw() {
}

void mousePressed() {
  stroke(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(5);
  line(mouseX, mouseY, x, y);
  x = mouseX;
  y = mouseY;
}