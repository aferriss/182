
PImage img1;
PImage img2;


Stamp pumpkinStamp; 


void setup() {
  size(1280, 720);
  background(255);

  img1 = loadImage("pumpkin.png");
  img2 = loadImage("pumpkinNeg.png");


  pumpkinStamp = new Stamp(img1);
}


void draw() {
  pumpkinStamp.draw(mouseX, mouseY);
}

void keyPressed() {
  //press a for bigger
  if (key == 'a') {
    pumpkinStamp.bigger(5);
  }

  //press s for smaller
  if (key == 's') {
    pumpkinStamp.smaller(5);
  }

  //press c for new stamp
  if (key == 'c') {
    if (pumpkinStamp.stampImage == img1) {
      pumpkinStamp.changeStamp(img2);
    } else {
      pumpkinStamp.changeStamp(img1);
    }
  }
}