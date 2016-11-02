var shapeX, shapeY, shapeW, shapeH;
var speed;
function setup() {
  createCanvas(720,720);
  
  shapeX = width/2;
  shapeY = height/2;
  shapeW = 0;
  shapeH = 0;
  
  speed = 10;
  
  noFill();
  stroke(0);
  strokeWeight(2);
}

function draw() {
  background(180);
  
  growShape();

}


function growShape(){
  
  ellipse(shapeX, shapeY, shapeW, shapeH);
  
  shapeW += 10;
  shapeH += 10;
}