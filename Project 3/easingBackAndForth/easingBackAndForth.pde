float x;

float targetX;

float easing = 0.05;


void setup() {
  size(1280, 720);

  targetX = width;

  noStroke();
}



void draw() {
  background(180);

  float dx = targetX - x;
  x += dx * easing;

  ellipse(x, height/2, 50, 50);

  if (x > width-1 ) {
    targetX = 0;
  } else if (x < 1) {
    targetX = width;
  }
}