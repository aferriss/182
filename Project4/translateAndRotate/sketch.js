function setup() {
  createCanvas(720,720);
  
  noFill();
  strokeWeight(5);
  stroke(20,200,255);
  
  rectMode(CENTER);
}

function draw() {
  background(80);
  
  push();
      translate(width/2, height/2);
      rotate(radians(frameCount));
      rect(0,0, 100,100);
  pop();
  
  push();
    translate(100,100);
    rotate(radians(45));
    rect(0,0, 100,100);
  pop();
}