import processing.sound.*;


// Button is a class that takes (X, Y, Width, Height)
// We must use the new syntax to create a button
Button button1 = new Button(240, 310, 200,100);

// make the SoundFile variable
SoundFile dingdong;


color buttonColor1 = color(255, 0, 0);
color hoverColor1= color(0, 0, 255);


void setup(){
  
  size(1280,720);
  textAlign(CENTER, CENTER);
  
  //init the SoundFile variable
  dingdong = new SoundFile(this, "dingdong.wav");
}


void draw(){
  background(255);
  noStroke();
  
  button1.draw(buttonColor1, hoverColor1);
  fill(0);
  text("DING DONG", button1.x + button1.buttonWidth/2, button1.y + button1.buttonHeight/2);
  
  // if the mouse is inside button1 and not already playing the sound...play it!
  if(button1.mouseInside){
    if(dingdong.isPlaying() == 0){
      dingdong.play();
    }
  // else if the mouse is not in button one, stop playing the sound
  } else if(!button1.mouseInside){
    dingdong.stop();
  }
}