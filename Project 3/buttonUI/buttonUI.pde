PImage pawButton;
PImage eraserButton;
PImage brushButton;

void setup(){
  size(1280,720);
  
  //load images for our buttons
  pawButton = loadImage("paw.png");
  eraserButton = loadImage("eraser.png");
  brushButton = loadImage("brush.png");
  
  background(255);
}



void draw(){
  
  //call the draw ui function
  drawUI();
  
}



void drawUI(){
  //menu background color
  fill(210);
  
  //menu border color
  stroke(180);
  strokeWeight(3);
  
  //menu box
  rect(0,0,100,height-1);
  
  //button background color
  fill(255);
  
  //buttons and background squares
  rect(10,10,80,80);
  image(brushButton, 15,15,70,70);
  
  rect(10,100,80,80);
  image(eraserButton, 15,105,70,70);
  
  rect(10,190,80,80);
  image(pawButton, 15,195,70,70);
}