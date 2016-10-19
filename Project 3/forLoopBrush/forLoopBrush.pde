

void setup() {
  size(1280, 720);

  background(255);
  fill(0);
  noStroke();
}



void draw() {
  //do something 10 times
  for (int i = 0; i<10; i++) {
    // i = 0, i = 1, i = 2, i = 3 ...until i = 10
    
    // 0*20 = 0, 1*20 = 20, 2*20 = 40 ...
    rect(mouseX + i*20, mouseY, 1, 10);
  }
}