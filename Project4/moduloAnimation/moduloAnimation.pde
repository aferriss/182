
int size = 80;

void setup() {
  size(1280, 720);
}


void draw() {

  background(255);

  noStroke();
  fill(0, 0, 0);
  ellipse(width/2, height/2, size, size);

  size++;

  size = size % 100;

  println(size);
}