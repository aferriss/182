String words = "smash the like";

void setup(){
  
  size(1280, 720);
  
  textSize(32);
  textAlign(CENTER, CENTER);
}


void draw(){
  background(255);
  
  if( isInside( 500, 300, 300,100) ){
    words = "duh";
  } else {
    words = "smash the like";
  }
  
  fill(0);
  rect( 500, 300, 300,100 );
  
  fill(255,100,255);
  text(words, 640, 360);
  
}


Boolean isInside(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ){
    return true;
  } else {
    return false;
  }
}