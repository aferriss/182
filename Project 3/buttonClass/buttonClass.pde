Button catButton;

void setup(){
  
  size(1280,720);
  background(255);
  
  catButton = new Button("cat.png", 10,10,100,100);
  
}


void draw(){
  background(200,200,255);
  catButton.draw();
}

void mousePressed(){
  catButton.update(); 
}