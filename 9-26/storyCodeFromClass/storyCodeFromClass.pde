
int halfW;
int halfH;

Boolean scene1, scene2, scene3, scene4;
PFont impact;
PImage doge;

String words1 = "THIS IS A STORY ABOUT A DOGE";

void setup(){
  size(1280, 720);
  impact = loadFont("Impact-48.vlw");
  textFont(impact);
  textSize(48);
  textAlign(CENTER, CENTER);
  
  doge = loadImage("doge.jpeg");
  
  halfW = width/2;
  halfH = height/2;
  
  scene1 = true;
  scene2 = false;
  scene3 = false;
  scene4 = false;
}


void draw(){
  background(255);
  fill(255);
  if(scene1 == true){
    image(doge, 0,0,width, height);  
    text(words1, halfW, halfH - 200);
  } else if(scene2 == true){
      text("all of a sudden chapter 2!", halfW, halfH - 100);
  } else if(scene3 == true){
      text("omg lol", halfW, halfH);
  } else if(scene4 == true){
      text("they lived happily ever after", halfW, halfH + 100);
  }
}

void mousePressed(){
  if(scene1 == true){
   scene2 = true;
   scene1 = false;
  }
  else if(scene2 == true){
   scene3 = true;
   scene2 = false;
  }
  else if(scene3 == true){
   scene4 = true;
   scene3 = false;
  }
  else if(scene4 == true){
   scene1 = true;
   scene4 = false;
  }
}