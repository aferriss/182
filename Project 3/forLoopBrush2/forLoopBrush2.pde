void setup() {
  size(1280, 720);

  background(180);
}



void draw() {
  noStroke();

  if (mousePressed && mouseButton == LEFT) {
    for (int i = 0; i< 30; i++) {
      ellipse(mouseX + i*40, mouseY, 5, 5);
    }
  }
  
  if(mousePressed && mouseButton == RIGHT) {
    for (int i = 0; i< 30; i++) {
      ellipse(mouseX , mouseY + i*40, 5, 5);
    }
  }
}