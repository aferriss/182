Boolean openingScene;
Boolean scene1, scene2, scene3, scene4, scene5;
PImage pathImg, pinkDonut, moneyImg, peptoImg, greenSuit, howTo, slime, slimeMask;
PFont comicSans32;
PFont papyrus;

int halfWidth;
int halfHeight;

color redRect = color(255,0,0);
color blueRect = color(0,0,255);

int greenManX = 0;
int greenManSpeed = 10;


void setup() {
  size(1280, 720);
  openingScene = true;
  scene1 = false;
  scene2 = false;
  scene3 = false;
  scene4 = false;
  scene5 = false;
  
  textSize(32);
  textAlign(CENTER);
  
  halfWidth = width/2;
  halfHeight = height/2;
  
  pathImg = loadImage("path.jpg");
  pinkDonut = loadImage("pinkDonut.gif");
  moneyImg = loadImage("money.png");
  peptoImg = loadImage("pepto.jpg");
  greenSuit = loadImage("greenSuit.png");
  howTo = loadImage("howTo.gif");
  slime = loadImage("slime.jpg");
  slimeMask = loadImage("slimer.jpg");
  
  comicSans32 = loadFont("ComicSansMS-32.vlw");
  papyrus = createFont("papyrus", 32);
  
  textFont(comicSans32);
}




void drawOpeningScene(){
   image(pathImg, 0,0, width, height);
    
    text("This is the beginning of our adventure", halfWidth, 50);
    text("Click the red box to begin!", halfWidth, 100);
    color boxColor = redRect;
    
    if( isInside(halfWidth-100, halfHeight + 100, 200,100) ){
      boxColor = blueRect;
    }
    
    //red box
    fill(boxColor);
    noStroke();
    rect(halfWidth-100, halfHeight + 100, 200,100);
    fill(0);
    text("CLICK ME", halfWidth, halfHeight + 160);
  
}

void drawScene1(){
   
      noStroke();
      //pink rect
      fill(255,200,255);
      rect(0, 0, halfWidth, height);
      image(pinkDonut, halfWidth/2 - 100, halfHeight - 100, 200,200); 
      //green rect
      fill(0,128,0);
      rect(halfWidth, 0, halfWidth, height);
      image(moneyImg, width - halfWidth/2 - 100, halfHeight - 100, 200,200);
      
      
      fill(0);
      text("Pick a path, choose wisely!", halfWidth, halfHeight-200);
      fill(255,0,255);
      text("Pink<3<3<3<3", halfWidth/2, halfHeight+150);
      fill(0,255,0);
      text("GREEEN = $$$$", halfWidth + halfWidth/2,  halfHeight+150);
  
}


void drawScene2(){
  
  noStroke();
      image(howTo,0, 0,width, height);
      float rollDice = random(10);
      if(rollDice <= 5){
        fill(255,0,255);
      } else {
        fill(255,100,255);
      }

      text("PINK IS THE GREATEST COLOR OF ALL TIME ", halfWidth, 75);
}

void drawScene3(){
  image(slime, 0,0,width, height);
      
  text("~~~~GREEN MACHINE~~~", halfWidth, halfHeight-200);
  greenManX+=greenManSpeed;
  if(greenManX > width - greenSuit.width || greenManX < 0){
    greenManSpeed *= -1;
  }
  
  image(greenSuit, greenManX, halfHeight - greenSuit.height/2);
  
  text("Click the green man to continue",halfWidth, halfHeight + 200 );
  
}

void drawScene4(){
  fill(255, 0,255);
      rect(0, 0, width, height);
      
      fill(0,255,255);
      image(peptoImg, halfWidth - peptoImg.width/2, halfHeight - peptoImg.height/2);
      text("omg pink overload am sick", halfWidth, halfHeight-200);
  
}


void drawScene5(){
  
  text("lol wut", halfWidth, halfHeight);
  image(slimeMask, 0,0);
  
  pushMatrix();
  scale(-1,1);
  image(slimeMask, -width,0);
  popMatrix();
  
  
}

void draw() {
  background(255);  
  fill(0);
  stroke(0);
  if(openingScene){
     drawOpeningScene();
  } else if (scene1) {    
     drawScene1();
  } else if (scene2) {
     drawScene2();
  } else if (scene3) {
     drawScene3();
  } else if (scene4) {
     drawScene4();
  } else if (scene5) {
     drawScene5();
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
      if( isInside(0, 0, halfWidth, height)){
        //choose pink
        scene2 = true;
        textFont(comicSans32);
      } else if( isInside(halfWidth, 0, halfWidth, height)){
        //choose green
        scene3 = true;
        textFont(papyrus);
      }   
    }
      
  } else if (scene2) {    
    
     if(mousePressed == true ){
        scene2 = false;
        scene4 = true;
        
      }
        
        
  } else if (scene3) {      
     
     if(mousePressed == true && isInside(greenManX, halfHeight - greenSuit.height/2, greenSuit.width, greenSuit.height)){
        scene3 = false;
        scene5 = true;
      }
        
        
  } else if (scene4) {      
     if(mousePressed == true){
        scene4 = false;
        openingScene = true;
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