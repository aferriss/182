void setup(){
  size(500,500);
}

void draw(){
  
  background(255);
  fill(0);
  
  if(isInside(width/2 - 100, height/2 -100, 200,200) && mousePressed){
    ellipse(10,10,10,10);
  } else {
    rect(width/2 - 100, height/2 -100, 200,200);
  }
}


Boolean isInside(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ){
    return true;
  } else {
    return false;
  }
}