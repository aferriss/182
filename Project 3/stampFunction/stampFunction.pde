PImage brush1;
int brushSize = 100;


void setup() {
  size(1280, 720);

  brush1 = loadImage("img.jpg");
  
  background(180);
}


void draw() {
  
  if (mousePressed) {
    stamp(brush1, mouseX, mouseY, brushSize, brushSize);
  }
}

void keyPressed(){
 if(key == '-'){
  smallerBrush(3); 
 }
 
 if(key == '+' || key == '=' ) {
  biggerBrush(3);
 }
  
}


void stamp(PImage img, int x, int y, int w, int h) {
  image(img, x - w/2, y - h/2, w, h);
}

void biggerBrush(int num){
  brushSize += num;
}

void smallerBrush(int num){
  brushSize -= num;
}