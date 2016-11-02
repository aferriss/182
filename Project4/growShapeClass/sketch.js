//an instance of our animation
var growCircle;

function setup() {
  createCanvas(720, 720);

  // create the new animation
  growCircle = new Animation();

}

function draw() {
  background(180);
  
  //draw and update the animation
  growCircle.draw();
  growCircle.update();
}

function mousePressed() {
  
  //start the animation
  growCircle.start();
}


function Animation() {
  //setup our starting parameters
  this.shapeX = width / 2;
  this.shapeY = height / 2;

  this.shapeW = 0;
  this.shapeH = 0;

  this.speed = 5;
  this.doAnimation = false;
  
  this.color = color(0);
  this.weight = 2;

  //define the animation behaviors
  this.draw = function() {
    noFill();
    strokeWeight(this.weight);
    stroke(this.color);
    ellipse(this.shapeX, this.shapeY, this.shapeW, this.shapeH);
  }

  this.update = function() {
    if (this.doAnimation) {
      this.shapeW += this.speed;
      this.shapeH += this.speed;
    }
  }
  
  this.start = function(){
    this.doAnimation = true;
    this.shapeW = 0;
    this.shapeH = 0;
  }
  
}