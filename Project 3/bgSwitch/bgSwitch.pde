PImage bg1, bg2, bg1Button, bg2Button;
PImage currentBg;
PGraphics drawingLayer;

void setup() {
  size(1280, 720);

  bg1 = loadImage("bg1.jpg");
  bg2 = loadImage("bg2.jpg");

  bg1Button = loadImage("bg1Button.jpg");
  bg2Button = loadImage("bg2Button.jpg");

  currentBg = bg1;
  drawingLayer = createGraphics(width, height);
}



void draw() {

  drawBackground();
  drawPencil();
  drawButtons();
  println(frameRate);
}

void drawPencil() {
  drawingLayer.beginDraw();
  drawingLayer.stroke(0);
  drawingLayer.noFill();
  if (mousePressed) {
    drawingLayer.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  drawingLayer.endDraw();

  image(drawingLayer, 0, 0);
}

void drawButtons() {
  image(bg1Button, 10, 10, 100, 100);
  image(bg2Button, 10, 120, 100, 100);
}

void drawBackground() {
  image(currentBg, 0, 0);
}

void mousePressed() {
  if (isInside(  10, 10, 100, 100 ) ) {
    currentBg = bg1;
  }

  if (isInside(  10, 120, 100, 100 ) ) {
    currentBg = bg2;
  }
}


Boolean isInside(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    return true;
  } else {
    return false;
  }
}