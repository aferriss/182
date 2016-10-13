//press s to save an image

void setup() {
  size(1280, 720);

  background(255);
}


void draw() {

  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}


void keyPressed() {
  if (key == 's') { 
    save("saved/"+getTimeStamp()+".png"); 
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