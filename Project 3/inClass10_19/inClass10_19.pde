PImage brushButton;
PImage eraserButton;
PImage pawButton;

Boolean brushMode = false;
Boolean eraseMode = false;
Boolean pawMode = false;

void setup() {
  size(1280, 720);

  brushButton = loadImage("brush.png");
  eraserButton = loadImage("eraser.png");
  pawButton = loadImage("paw.png");

  background(255);
}

void draw() {

  drawMenu();

  if (brushMode) {
    brush();
  }

  if (pawMode) {
    paw();
  }

  if (eraseMode) {
    erase();
  }
}


void mousePressed() {
  if ( mouseX < 100 ) {
    brushMode = false;
    pawMode = false;
    eraseMode = false;
  }

  if ( isInside(10, 10, 80, 80) ) {
    brushMode = true;
  }

  if ( isInside(10, 100, 80, 80) ) {
    pawMode = true;
  }

  if ( isInside(10, 190, 80, 80 ) ) {
    eraseMode = true;
  }
}










void erase() {
  if (mousePressed) {
    fill(255);
    noStroke();
    rect(mouseX-25, mouseY - 25, 50, 50);
  }
}

void paw() {
  if (mousePressed) {
    image(pawButton, mouseX, mouseY, 100, 100);
  }
}

void brush() {
  if (mousePressed) {
    stroke(0);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void drawMenu() {
  //ui box
  fill(220);
  stroke(200);
  strokeWeight(3);
  rect(0, 0, 100, 280);

  fill(250);
  rect(10, 10, 80, 80);
  image(brushButton, 15, 15, 70, 70);

  fill(250);
  rect(10, 100, 80, 80);
  image(pawButton, 15, 105, 70, 70);

  fill(250);
  rect(10, 190, 80, 80);
  image(eraserButton, 15, 195, 70, 70);
}

Boolean isInside(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    return true;
  } else {
    return false;
  }
}