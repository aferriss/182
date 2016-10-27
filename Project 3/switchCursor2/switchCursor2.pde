PImage icon, icon2;

PImage currentIcon;

PGraphics drawLayer;

void setup() {
  size(1280, 720);

  icon = loadImage("icon.jpg");
  icon2 = loadImage("img.jpg");
  
  currentIcon = icon;
  
  drawLayer = createGraphics(width, height);
  
  
  noCursor();
}



void draw() {
  background(255);

  drawLayer.beginDraw();
  if (mousePressed) {
    drawLayer.image(currentIcon, mouseX-50, mouseY-50, 100, 100);
  }
  drawLayer.endDraw();

  image(drawLayer, 0, 0);
  image(currentIcon, mouseX-50, mouseY-50, 100, 100);
  
  drawMenu();
}

void drawMenu(){
  image(icon, 10,10,100,100);
  image(icon2, 10,120,100,100);
}

void mousePressed(){
  //button 1
  if( isInside(10,10,100,100 )) {
    currentIcon = icon;
  }
  
  //button 2
  if( isInside(10, 120, 100,100) ){
   currentIcon = icon2; 
  }
}



Boolean isInside(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
    return true;
  } else {
    return false;
  }
}