//make font variables
PFont font1;
PFont papyrus;
PFont avenir;

void setup(){
  size(1280, 720);
  
  //set font size and alignment
  textSize(32);
  textAlign(CENTER, CENTER);
  
  //load the fonts
  font1 = loadFont("ComicSansMS-48.vlw");
  papyrus = loadFont("Papyrus-32.vlw");
  avenir = loadFont("Avenir-BlackOblique-32.vlw");
  }



void draw(){
  background(255);
  
  //draw the fonts
  fill(0);
  textFont(font1);
  //text takes "Some text", x Position, y Position);
  text("THIS IS THE FIRST SENTENCE", 400,100);
  
  fill(255,0,0);
  textFont(papyrus);
  text("A BUNCH OF WORDS", width/2,height/2);
  
  
  fill(0,0,255);
  textFont(avenir);
  text("a third sentence that is lowercase", 600,600);
}