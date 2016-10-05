//import the sound library
import processing.sound.*;

//make a soundfile variable
SoundFile dingdong;


void setup(){
  size(1280,720);
 
  //load the sound file from the data folder
  dingdong = new SoundFile(this, "dingdong.wav");
}


void draw(){
  
  
  
}

void mousePressed(){
  //play the sound
  dingdong.play();
}