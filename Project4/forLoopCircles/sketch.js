var numCircles = 30;

function setup() {
  createCanvas(720, 720);
  noFill();
  strokeWeight(5);
}

function draw() {
  background(80);
  stroke(30,255,200);
  
  for (var i = 0; i < numCircles; i++) {
    ellipse(width / 2, height / 2, 20 * i, 20 * i);
  }
  
  numCircles = frameCount*0.1 % 30;
}