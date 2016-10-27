int inc = 0;
int time = 30;

void setup() {
  size(1280, 720);
}


void draw() {
  background(180, 180, 180);

  if ( inc < time ) {
    flash();
    inc++;
  }
}

void keyPressed() {
  if (key == ' ') {
    inc = 0;
  }
}


void flash() {

  if (frameCount % 5 == 0) {
    fill(128);
  } else {
    fill(60);
  }

  rect(0, 0, width, height);
}