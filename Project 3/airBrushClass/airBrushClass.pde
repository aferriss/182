//make a new airbrush

int density = 50;
int brushSize = 20;
int paintSize = 1;
color paintColor = color(0,0,100, 150);

AirBrush ab = new AirBrush(density, brushSize, paintSize, paintColor);

void setup() {
  size(1280, 720);
  
  
  background(255);
  stroke(0);
  fill(0);
  text("Press b to change brush density", 10,20);
  text("Press space bar to change brush color", 10,40);
}

void draw() {
  
  if (mousePressed) {
    //draw the airbrush
    ab.draw(mouseX, mouseY);
  }
}

void keyPressed() {
  //if spacebar is hit change color to red
  if (key == ' ') {
    ab.brushColor = color(255, 0, 0, 150);
  } 

  //if b increase brush density
  if (key == 'b') {
    ab.brushDensity = 200;
  }
}