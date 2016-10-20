class Button {
  int buttonWidth;
  int buttonHeight;

  int buttonX;
  int buttonY;

  Boolean isActive;

  PImage buttonImg;

  color buttonColor;
  color activeColor;


  Button(String path, int bX, int bY, int bW, int bH) {
    buttonImg = loadImage(path);

    buttonX = bX;
    buttonY = bY;

    buttonWidth = bW;
    buttonHeight = bH;

    buttonColor = color(255);
    activeColor = color(255, 200, 200);

    isActive = false;
  }

  void draw() {
    noStroke();
    fill(buttonColor);
    if(isActive){
      fill(activeColor);
    }
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    image(buttonImg, buttonX, buttonY, buttonWidth, buttonHeight);
  }

  void update() {
    if (isInside(buttonX, buttonY, buttonWidth, buttonHeight)) {
      isActive = true;
    }
  }

  Boolean isInside(int x, int y, int w, int h) {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
      return true;
    } else {
      return false;
    }
  }
}