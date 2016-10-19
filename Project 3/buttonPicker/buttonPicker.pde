PImage pawButton;
PImage eraserButton;
PImage brushButton;

Boolean pawMode = false;
Boolean eraserMode = false;
Boolean brushMode = false;

int btnSize = 80;
int btnX = 10;

int uiWidth = 100;
int uiHeight = 720;

void setup() {
  size(1280, 720);

  //load images for our buttons
  pawButton = loadImage("paw.png");
  eraserButton = loadImage("eraser.png");
  brushButton = loadImage("brush.png");

  background(255);
}

void draw() {
  //make sure the mouse is not in the ui
  if (mouseX > uiWidth) {
    
    // if the mode is on, draw the mode
    if (brushMode) {
      brush();
    } 
    if (eraserMode) {
      erase();
    }
  }
  
  //call the draw ui function
  drawUI();
}

void mousePressed() {
  //check to see if buttons have been pressed
  checkButton();
  
  //draw the paw only once on mousePress
  if (pawMode && mouseX > uiWidth) {
    paw();
  }
}

//simple brush function
void brush() {
  if (mousePressed) {
    stroke(0);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

//simple erase function
void erase() {
  if (mousePressed) {
    noStroke();
    fill(255);
    rect(mouseX-50, mouseY-50, 100, 100);
  }
}

//simple paw function
void paw() {
  if (mousePressed) {
    image(pawButton, mouseX-25, mouseY-25, 50, 50);
  }
}

void drawUI() {
  //menu background color
  fill(210);

  //menu border color
  stroke(180);
  strokeWeight(3);

  //menu box
  rect(0, 0, uiWidth, uiHeight-1);



  //buttons and background squares
  //if the mode is active, draw a red square instead to show that it is on
  fill(255);
  if (brushMode) {
    fill(255, 200, 200);
  }
  rect(10, 10, btnSize, btnSize);
  image(brushButton, 15, 15, 70, 70);

  fill(255);
  if (eraserMode) {
    fill(255, 200, 200);
  }
  rect(10, 100, btnSize, btnSize);
  image(eraserButton, 15, 105, 70, 70);

  fill(255);
  if (pawMode) {
    fill(255, 200, 200);
  }
  rect(10, 190, btnSize, btnSize);
  image(pawButton, 15, 195, 70, 70);
}


void checkButton() {
  //if the mouse is clicked inside the ui, first turn everything off
  if (isInside(0, 0, 100, height-1) ) {
    brushMode = false;
    eraserMode = false;
    pawMode = false;
  }

  //if the mouse is clicked inside a button, turn that button on
  if ( isInside(btnX, 10, btnSize, btnSize) ) {
    brushMode = true;
  }

  if ( isInside(btnX, 100, btnSize, btnSize) ) {
    eraserMode = true;
  }

  if ( isInside(btnX, 190, btnSize, btnSize) ) {
    pawMode = true;
  }
}


Boolean isInside(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    return true;
  } else {
    return false;
  }
}