var rectWidth;
var rectX;

var speed;

var grow = true;
var shrink = false;
function setup() {
  createCanvas(720, 720);
  noStroke();
  
  rectX = width/4;
  rectWidth = 0;
  speed = 30;
}

function draw() {
  background(180);
  slide();
}


function slide() {
  
  fill(255);
  for (var i = 0; i < 4; i++) {
    rect(rectX, height/4 + i * 100, rectWidth, 50);
  }

  if(rectWidth < width/2 && grow){
    rectWidth += speed;
  }
  
  if(rectWidth == width/2){
    grow = false;
    shrink = true;
  }
  
  if(rectWidth > 0 && shrink){
    rectWidth -= speed;
    rectX += speed;
  }
  
}