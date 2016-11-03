var anim;
var anim2;

function setup() {
  createCanvas(720, 720);
  noFill();
  strokeWeight(15);
  
  anim = new Animation();
  anim2 = new Animation();
  anim2.y = 150;
  anim2.speed = 1.1;
  anim2.color = color(100,255,200);
}

function draw() {
  background(80);
  
  anim.display();
  anim.update();
  
  anim2.display();
  anim2.update();
  
}
function mousePressed(){
  if(mouseButton == LEFT){
    anim.reset();
  }
  
  if(mouseButton == RIGHT){
    anim2.reset();
  }
  
}


function Animation(){
  this.color = color(255, 100, 100);
  this.x = 0;
  this.y = height/2;
  this.speed = 3;
  this.diameter = 100;
  
  this.display = function(){
    stroke(this.color);
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
  
  this.update = function(){
    this.x+= this.speed;
  }
  
  this.reset = function(){
    this.x = 0;
  }
}

