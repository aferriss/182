int uiWidth = 1280;
int uiHeight = 100;

int btnY = 720 - uiHeight + 10;
int btnSize = 80;

color brushColor = color(0);
color magenta = color(255, 82, 206);
color green = color(82, 255, 132);
color blue = color(82, 199, 255);
color yellow = color(241, 245, 133);
color black = color(0);
color white = color(255);

void setup() {
  size(1280, 720);
  background(255);
}


void draw() {
  //draw the brush
  drawBrush();
  
  //draw the UI
  drawUI();
}



void mousePressed() {
  //check if the mouse is inside a button when pressed
  checkButton();
}



void drawBrush() {
  if (mousePressed) {
    stroke(brushColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void drawUI() {

  //draw the main ui drawer
  fill(210);
  stroke(180);
  strokeWeight(3);
  rect(0, height-uiHeight, uiWidth, uiHeight);

  //draw some colored squares
  noStroke();

  //magenta
  fill(magenta);
  rect(10, btnY, btnSize, btnSize);

  //green
  fill(green);
  rect(100, btnY, btnSize, btnSize);

  //blue
  fill(blue);
  rect(190, btnY, btnSize, btnSize);

  //yellow
  fill(yellow);
  rect(280, btnY, btnSize, btnSize);

  //black
  fill(black);
  rect(370, btnY, btnSize, btnSize);

  //white
  fill(white);
  rect(460, btnY, btnSize, btnSize);
  
  //draw the active brush color
  fill(brushColor);
  textSize(32);
  text("Active Color", 1000, btnY+50);
  
}


void checkButton() {
  //check if the brush is inside of the buttons
  // set brushcolor to the new color if it is
  
  if ( isInside( 10, btnY, btnSize, btnSize )) {
    brushColor = magenta;
  }

  if (isInside( 100, btnY, btnSize, btnSize ) ) {
    brushColor = green;
  }

  if (isInside( 190, btnY, btnSize, btnSize ) ) {
    brushColor = blue;
  }

  if (isInside( 280, btnY, btnSize, btnSize ) ) {
    brushColor = yellow;
  }

  if (isInside( 370, btnY, btnSize, btnSize ) ) {
    brushColor = black;
  }

  if (isInside( 460, btnY, btnSize, btnSize) ) {
    brushColor = white;
  }
}



Boolean isInside(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    return true;
  } else {
    return false;
  }
}