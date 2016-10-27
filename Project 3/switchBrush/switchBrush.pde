PImage icon1, icon2;
PImage currentIcon;

void setup() {
  size(1280, 720);

  icon1 = loadImage("icon.jpg");
  icon2 = loadImage("img.jpg");

  currentIcon = icon1;

  background(255);
}


void draw() {
  background(255);
  //draw menu
  image(icon1, 10, 10, 100, 100);
  image(icon2, 10, 120, 100, 100);


  // draw something
  image(currentIcon, mouseX, mouseY, 100, 100);
}

void mousePressed() {
  if ( isInside(10, 10, 100, 100) ) {
    currentIcon = icon1;
  }

  if ( isInside(10, 120, 100, 100) ) {
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