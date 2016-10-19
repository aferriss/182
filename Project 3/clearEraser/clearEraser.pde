//from https://forum.processing.org/one/topic/eraser.html
// left click to draw
// right click to erase
PGraphics canvas;
PImage bgImg;

void setup() {
  size(500, 500);
  bgImg = loadImage("aquacrush.png");
  canvas = createGraphics(width, height);
  noStroke();
}

void draw() {
  background(255);
  image(bgImg, 0,0);
  image(canvas, 0, 0);
}

void mouseDragged() {
  if (mouseButton == LEFT) { 
    drawFunction();
  } else { 
    noFill(); 
    stroke(0, 255, 0); 
    ellipse(mouseX, mouseY, 50, 50); 
    eraseFunction();
  }
}

void drawFunction() {
  canvas.beginDraw();
    canvas.noStroke();
    canvas.fill(255, 0, 0);
    canvas.ellipse(mouseX, mouseY, 50, 50);
  canvas.endDraw();
}

void eraseFunction() {
  color c = color(0, 0);
  canvas.beginDraw();
  canvas.loadPixels();
  for (int x=0; x<canvas.width; x++) {
    for (int y=0; y<canvas.height; y++ ) {
      float distance = dist(x, y, mouseX, mouseY);
      if (distance <= 25) {
        int loc = x + y*canvas.width;
        canvas.pixels[loc] = c;
      }
    }
  }
  canvas.updatePixels();
  canvas.endDraw();
}