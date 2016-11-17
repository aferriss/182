// a ball
// some paddles
// walls
// score
// center line
var paddle1;
var paddle2;

function setup() {
  createCanvas(720, 720);
  
  paddle1 = new Paddle(20, windowHeight/2, 20, 100);
  paddle2 = new Paddle(windowWidth - 40, windowHeight/2, 20, 100);
}

function draw() {
  background(80);
  
  paddle1.display();
  paddle1.move();
  
  paddle2.display();
  paddle2.move();
  
}

function Paddle(x, y, w, h){
  this.x = x;
  this.y = y;
  
  this.width = w;
  this.height = h;
  
  this.color = color(255, 200, 200);
  
  this.display = function(){
    fill(this.color);
    noStroke();
    rect(this.x, this.y, this.width, this.height);
  }
  
  this.move = function(){
    this.y = mouseY - this.height/2;
  }
}




