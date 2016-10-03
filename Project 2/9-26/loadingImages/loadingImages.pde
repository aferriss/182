//initialize image variables
PImage mycoolimage;
PImage image2;
PImage puppy;
PImage puppy2;


void setup(){
  size(1280,720);
  //load the images
  mycoolimage = loadImage("pinkDonut.gif");
  image2 = loadImage("money.png");
  puppy = loadImage("puppy.jpg");
  puppy2 = loadImage("puppy2.png");
}

void draw(){
  background(255);
  
  //draw the images
  image(puppy, 0, 0, 300,300);
  image(mycoolimage, mouseX , mouseY, 100, 100);
  image(image2, width/2, height/2);
  image(puppy2, 0,0,1000,1000);
 
}