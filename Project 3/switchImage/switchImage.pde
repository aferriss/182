PImage cactus;
PImage bunny;

Boolean drawBunny, drawCactus;

void setup() {
  size(1280, 720);
  
  //load the images
  cactus = loadImage("cactus.png");
  bunny = loadImage("bunny.png");
  
  //start with bunny on first
  drawBunny = true;
  drawCactus = false;
  
  background(255);
  
  //draw some instructions
  fill(0);
  text("Click to draw", 10,20);
  text("Press b to draw bunnies", 10, 40);
  text("Press c to draw cactus", 10, 60);
}



void draw() {
  // if bunny is on draw the bunny, otherwise draw the cactus
 if(mousePressed){ 
    if(drawBunny){
      image(bunny, mouseX - bunny.width/2, mouseY - bunny.width/2); 
    } else if(drawCactus){
      image(cactus, mouseX - cactus.width/2, mouseY - cactus.width/2);
    }
 }
}


void keyPressed() {
  
  //choose an image to draw based on the key pressed
  if(key == 'b'){
    drawBunny = true;
    drawCactus = false;
  }
  
  if(key == 'c'){
    drawBunny = false;
    drawCactus = true;
  }
}