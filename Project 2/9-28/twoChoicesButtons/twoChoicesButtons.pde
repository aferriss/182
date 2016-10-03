
String text1 = "In the beginning";
String text2 = "there were two choices";
String choice1 = "YES";
String choice2 = "NOOOOP";
String win = "u win";
String lose = "everything is bad u lose";

PFont font;

Boolean scene1, scene2, yesScene, noScene;

void setup(){
  size(1280,720);
  
  textSize(32);
  textAlign(CENTER, CENTER);
  
  font = loadFont("AmericanTypewriter-Bold-48.vlw");
  textFont(font);
  
  scene1 = true;
  scene2 = false;
  yesScene = false;
  noScene = false;
}



void draw(){
  background(255);
  
  fill(0);
  
  if(scene1 == true){
    text(text1, width/2,100);
  } else if(scene2){
    text(text2, width/2, 100);
    
    //color screen
    if(mouseX < width/2){
      fill(255,0,0);
      rect(width/4 - 200, 200, 300,300);
    } else if(mouseX > width/2){
      fill(0,0,255);
      rect(width/4 * 3 - 200, 200, 300,300);
    }
    
    fill(0);
    text(choice1, width/4, 400);
    text(choice2, width/4 * 3, 400);
    
    
  } else if(yesScene){
    //draw yes scene
    text(win, width/2, height/2);
  } else if(noScene){
    //draw no scene
    text(lose, width/2, height/2);
  }
}

void mousePressed(){
  if(scene1 == true){
    // go to scene2
    scene1 = false;
    scene2 = true;
  } else if(scene2 == true){
    if(mouseX < width/2){
     // go to yes scene 
     scene2 = false;
     yesScene = true;
     
    } else if(mouseX > width/2){
     // go to no scene 
     scene2 = false;
     noScene = true;
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