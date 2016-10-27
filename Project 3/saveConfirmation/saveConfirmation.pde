Boolean showSaveMessage = false;

void setup() {
  size(1280, 720);
  background(255);
}

void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if(showSaveMessage){
    savedConfirmation();
  }
  println(showSaveMessage);
}

void keyPressed() {
  if (key == 's') {
    save(getTimeStamp() + ".png");
    println("Saved image = " + getTimeStamp() + ".png" );
    showSaveMessage = true;
  }
}

void mousePressed(){
 showSaveMessage = false; 
}

void savedConfirmation() {
  fill(0);
  rect(width/2 - 200, height/2 - 100, 400, 200);
  fill(255);
  textSize(18);
  text("You saved an image!", width/2 - 80, height/2);
}



String getTimeStamp() {
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