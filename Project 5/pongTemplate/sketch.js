var paddle1;
var paddle2;
var ball;

var p1Score = 0;
var p2Score = 0;

var balls = [];

function setup() {
  createCanvas(windowWidth, windowHeight);

  paddle1 = new Paddle(20, windowHeight / 2, 5, 100);
  paddle2 = new Paddle(windowWidth - 40, windowHeight / 2, 5, 100);

  ball = new Ball();
  balls.push(ball);

}

function draw() {
  background(80);

  paddle1.display();
  paddle1.move();

  paddle2.display();
  paddle2.move();

  for(var i = 0; i<balls.length; i++){
    balls[i].display();
    balls[i].move();
    balls[i].bounce(paddle1);
    balls[i].bounce(paddle2);
  }
  
  fill(255);
  text(p1Score, windowWidth/2 - windowWidth/4, 30);
  text(p2Score, windowWidth/2 + windowWidth/4, 30);
  
}

function Ball() {
  this.x = windowWidth / 2;
  this.y = windowHeight / 2;
  this.speedX = random(-5, 5);
  this.speedY = random(-5, 5);

  this.ballSize = 10;

  this.display = function() {
    noStroke();
    fill(255);
    rect(this.x, this.y, this.ballSize, this.ballSize);
  }

  this.move = function() {
    this.x = this.x + this.speedX;
    this.y = this.y + this.speedY;

    if (this.y < 0 || this.y > windowHeight) {
      this.speedY *= -1;
      this.y += this.speedY;
    }
    
    // if(this.x < 0 || this.x > windowWidth){
    //   this.reset();
    // }
    
    if(this.x < 0 ){
      p2Score ++;
      this.reset();
    }
    
    if(this.x + this.ballSize > windowWidth ){
      p1Score ++;
      this.reset();
    }
    
  }

  this.bounce = function(paddle) {
    if (this.x + this.ballSize > paddle.x &&
      this.x < paddle.x + paddle.width &&
      this.y + this.ballSize > paddle.y &&
      this.y < paddle.y + paddle.height) {
      
      this.speedX *= -1;
      this.x += this.speedX;
      
      if(balls.length < 10){
        var another = new Ball();
        another.speedX = this.speedX ;//* random(1.5);
        another.speedY = this.speedY * random(1.5);
        another.x = this.x;
        another.y = this.y;
        balls.push(another);
      }
    }
    
    
  }
  
  this.reset = function(){
    this.x = windowWidth / 2;
    this.y = windowHeight / 2;
    this.speedX = random(-5, 5);
    this.speedY = random(-5, 5);
  }

}


function Paddle(x, y, w, h) {
  this.x = x;
  this.y = y;

  this.width = w;
  this.height = h;

  this.color = color(255, 200, 200);

  this.display = function() {
    fill(this.color);
    noStroke();
    rect(this.x, this.y, this.width, this.height);
  }

  this.move = function() {
    this.y = mouseY - this.height / 2;
  }
}