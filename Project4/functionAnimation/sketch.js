var squareSize = 0;
var x = 0;
var y = 0;
var speed = 1.1;
var animate = false;

function setup() {
  createCanvas(720, 720);
  noFill();
  strokeWeight(5);
  
  rectMode(CENTER);
  
}

function draw() {
  background(80);
  stroke(255,100,100);
  display();
  update();
}

function mousePressed() {
  reset();
  animate = true;
}

function display() {
  translate(width / 2, height / 2);
  rect(x, y, squareSize, squareSize);
}

function update() {
  if (animate) {
    var easing = 0.05;
    var target = width;
    var difference = target - squareSize;
    squareSize += difference * easing;
  }
}

function reset(){
  squareSize = 0;
}
