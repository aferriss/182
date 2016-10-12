
PImage cactus;
PGraphics drawingLayer;

void setup() {
  size(1280, 720);
  
  // load the image
  cactus = loadImage("cactus.png");
  
  // setup the drawing layer the same size as our sketch
  drawingLayer = createGraphics(1280, 720);
}


void draw() {
  
  // a hidden offscreen image where we do the actual drawing
  drawingLayer.beginDraw();
    if (mousePressed) {
      drawingLayer.image(cactus, mouseX - cactus.width/2, mouseY - cactus.width/2);
    }
  drawingLayer.endDraw();

  //keep clearing the background of our main view
  background(255);

  //draw the drawing layer
  image(drawingLayer, 0, 0);
  
  //draw the preview cactus
  image(cactus, mouseX - cactus.width/2, mouseY - cactus.width/2);
}