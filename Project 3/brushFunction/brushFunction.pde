PImage brush1;
PImage brush2;
PImage currentBrush;

int brushW;
int brushH;

void setup() {
  size(1280, 720);
  background(255);

  brush1 = loadImage("pumpkin.png");
  brush2 = loadImage("pumpkinNeg.png");

  currentBrush = brush1;

  brushW = currentBrush.width;
  brushH = currentBrush.height;
  
  
  stroke(0);
  fill(0);
  text("Press + or - to change brush size", 10, 20);
  text("Press p or i to change brushes", 10, 40);
}

void draw() {
  pumpkinBrush();
}


void pumpkinBrush() {
  if (mousePressed) {
    image(currentBrush, mouseX - brushW/2, mouseY - brushH/2, brushW, brushH);
  }
}

void brushBigger() {
  brushW = brushW + 5;
  brushH = brushH + 5;
}

void brushSmaller() {
  brushW = brushW - 5;
  brushH = brushH - 5;
}



void keyPressed() {
  if (key == 'i') {
    currentBrush = brush2;
  }
  if (key == 'p') {
    currentBrush = brush1;
  }

  if (key == '=' || key == '+') {
    brushBigger();
  }
  
  if (key == '-' || key == '_') {
    brushSmaller();
  }
}