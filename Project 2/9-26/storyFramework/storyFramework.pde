Boolean openingScene;
Boolean scene1, scene2, scene3, scene4, scene5;

int halfWidth;
int halfHeight;

color redRect = color(255,0,0);
color blueRect = color(0,0,255);

void setup() {
  size(1280, 720);
  openingScene = true;
  scene1 = false;
  scene2 = false;
  scene3 = false;
  
  textSize(32);
  textAlign(CENTER);
  
  halfWidth = width/2;
  halfHeight = height/2;
}


void draw() {
  background(255);
  fill(0);
  stroke(0);
  if(openingScene){
      text("This is the beginning of our story", halfWidth, halfHeight);
      text("Click the red box to begin!", halfWidth, halfHeight + 50);
      color boxColor = redRect;
      
      if( isInside(halfWidth-100, halfHeight + 100, 200,100) ){
        boxColor = blueRect;
      }
      
      fill(boxColor);
      noStroke();
      rect(halfWidth-100, halfHeight + 100, 200,100);
      fill(0);
      text("CLICK ME", halfWidth, halfHeight + 160);
      
      
      
  } else if (scene1) {
    
    
      text("This is scene 1", halfWidth, halfHeight);
      
      
  } else if (scene2) {
    
    
      text("This is scene 2", halfWidth, halfHeight);
      
      
  } else if (scene3) {
    
    
      text("This is scene 3", halfWidth, halfHeight);
      
      
  } else if (scene4) {
    
    
      text("This is scene 4", halfWidth, halfHeight);
      
      
  } else if (scene5) {
    
    
      text("This is scene 5", halfWidth, halfHeight);
      
      
  }
}


void mousePressed() {
  if(openingScene){        
      
    
        if(mousePressed == true){
          openingScene = false;
          scene1 = true;
        }
      
      
  } else if (scene1) {      
        
    
        if(mousePressed == true){
          scene1 = false;
          scene2 = true;
        }
      
  } else if (scene2) {      
       
    
        if(mousePressed == true){
          scene2 = false;
          scene3 = true;
        }
        
        
  } else if (scene3) {      
       
    
        if(mousePressed == true){
          scene3 = false;
          scene4 = true;
        }
        
        
  } else if (scene4) {      
       
    
        if(mousePressed == true){
          scene4 = false;
          scene5 = true;
        }
        
        
  } else if (scene5) {      
      
    
        if(mousePressed == true){
          scene5 = false;
          openingScene = true;
        }
         
  }
}



Boolean isInside(int x, int y, int w, int h){
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ){
    return true;
  } else {
    return false;
  }
}