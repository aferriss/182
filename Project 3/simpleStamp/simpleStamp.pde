PImage cactus;


void setup(){
  size(1280, 720);
  
  cactus = loadImage("cactus.png");
  
  background(255);
}


void draw(){
  
  if(mousePressed){
    image(cactus, mouseX - cactus.width/2, mouseY - cactus.width/2);
  }
  
}