var myFirstBall;

var ballArr = [];

function setup() {
  createCanvas(windowWidth,windowHeight);  
  
  myFirstBall = new Ball();
  
  for(var i = 0; i< 100; i++){
    var b = new Ball();
    ballArr.push(b);
  }
}

function draw() {
  // background(255);
  
  for(var i = 0; i< ballArr.length; i++){
    ballArr[i].update();
    ballArr[i].draw();
  }
}

function Ball(){
  this.x = random(windowWidth);
  this.y = random(windowHeight);
  this.xSpeed = random(10);
  this.ySpeed = random(10);
  this.size = random(50)
  this.width = this.size;
  this.height = this.size;
  this.color = color(random(255), random(255), random(255));
  
  this.draw = function(){
    fill(this.color);
    ellipse(this.x, this.y, this.width, this.height);
  }
  
  this.update = function(){
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    
    if(this.x >= windowWidth || this.x <= 0){
      this.xSpeed *= -1;
    }
    
    if(this.y >= windowHeight || this.y <= 0){
      this.ySpeed *= -1;
    }
  }
}