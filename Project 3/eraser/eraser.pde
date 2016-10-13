// An example of how to make an eraser and clear all 
PGraphics drawingLayer;

void setup() {
  size(1280, 720);

  // setup the drawing layer the same size as our sketch
  drawingLayer = createGraphics(1280, 720);
}


void draw() {

  // a hidden offscreen image where we do the actual drawing
  drawingLayer.beginDraw();

    //draw a line
    if (mousePressed) {
      drawingLayer.stroke(0);
      drawingLayer.line(mouseX, mouseY, pmouseX, pmouseY);
    }
  
    //draw a white box as an eraser
    if (mousePressed && (mouseButton == RIGHT)) {
      drawingLayer.fill(255);
      drawingLayer.noStroke();
      drawingLayer.rect(mouseX-50, mouseY-50, 100, 100);
    }

  drawingLayer.endDraw();

  //keep clearing the background of our main view
  background(255);

  //draw the drawing layer
  image(drawingLayer, 0, 0);

  //draw a transparent box so we know where our eraser is
  if (mousePressed && (mouseButton == RIGHT)) {
    fill(0, 0, 0, 0);
    stroke(0);
    rect(mouseX-50, mouseY-50, 100, 100);
  }
}


void keyPressed() {
  //pressing spacebar will clear everything
  if (key == ' ') {
    drawingLayer.beginDraw();
    drawingLayer.clear();
    drawingLayer.endDraw();
  }
}