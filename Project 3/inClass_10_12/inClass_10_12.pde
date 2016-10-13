
PImage cactus;
PImage bunny;

Boolean bunnyMode, cactusMode, shapeMode, lineMode, eraseMode;

void setup() {
  size(1280, 720);
  cactus = loadImage("cactus.png");
  bunny = loadImage("bunny.png");

  background(255);

  bunnyMode = true;
  cactusMode = false;
  shapeMode = false;
  lineMode = false;
  eraseMode = false;
}
void draw() {
  if (mousePressed) {
    if (bunnyMode) {  
      image(bunny, mouseX - 50, mouseY - 50, 100, 100);
    }

    if (cactusMode) {
      image(cactus, mouseX - 50, mouseY - 50, 100, 100);
    }

    if (shapeMode) {
      // draw some shapes
      noStroke();
      fill(random(255), random(255), random(255));
      rect(mouseX, mouseY, 50, 50);
    }

    if (lineMode) {
      stroke(0);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }

    if (eraseMode) {
      fill(255);
      noStroke();
      rect(mouseX-50, mouseY-50, 100, 100);
    }
  }

  if (keyPressed) {
    if (key == ' ') {
      fill(255);
      noStroke();
      rect(0, 0, width, height);
    }
  }
}
void keyPressed() {
  
  if(key == 's'){
   
    save("saved/image" + getTimeStamp() + ".png");
    
  }
  
  
  if (key == 'e') {
    eraseMode = true;
    shapeMode = false;
    bunnyMode = false;
    cactusMode = false;
    lineMode = false;
  }

  if (key == 'l') {
    lineMode = true;
    shapeMode = false;
    bunnyMode = false;
    cactusMode = false;
    eraseMode = false;
  }


  if ( key == 'r') {
    shapeMode = true;
    bunnyMode = false;
    cactusMode = false;
    lineMode = false;
    eraseMode = false;
  }

  if ( key == 'c') {
    cactusMode = true;
    bunnyMode = false;
    shapeMode = false;
    lineMode = false;
    eraseMode = false;
  }

  if ( key == 'b') {
    bunnyMode = true;
    cactusMode = false;
    shapeMode = false;
    lineMode = false;
    eraseMode = false;
  }
}


String getTimeStamp(){
  int day = day();
  int month = month();
  int year = year();
  int hour = hour();
  int minute = minute();
  int second = second();
  int millis = millis();
  
  String timeStamp = year+"-"+month+"-"+day+"-"+hour+"-"+minute+"-"+second+"-"+millis;
  
  return timeStamp; 
}