Ball myBall;
Ball ball2;
void setup() {
  size(1280, 720);
  
  myBall = new Ball(width/2, height/2, 30,5, color(255,0,0) );
  ball2 = new Ball(width/2, height/2 + 100, 10,10, color(255,0,255) );
}



void draw() {
  background(255);
  myBall.draw();
  ball2.draw();  
}

class Ball {

  int x;
  int y;
  int size;
  color col;
  int speed;

  Ball (int xPos, int yPos, int ballSize, int ballSpeed, color ballCol) {
    x = xPos;
    y = yPos;
    size = ballSize;
    col = ballCol;
    speed = ballSpeed;
  }

  void draw() {
    
    noStroke();
    fill(col);
    ellipse(x, y, size, size);
    update();
  }
  
  void update(){
    x += speed;
    if(x >= width || x <= 0){
      speed *= -1;
    }
  }
}