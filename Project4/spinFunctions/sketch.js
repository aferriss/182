var cubeSize = 100;
var x = 0;
var y = 0;
var rotation = 0;
var spin = false;

function setup() {
  createCanvas(720, 720);
}

function draw() {
  background(80);
  rectMode(CENTER);

  display();
  update();
}

function mousePressed() {
  reset();
  spin = true;
}

function display() {
  stroke(20, 250, 225);
  noFill();

  translate(width / 2, height / 2);
  rotate(radians(rotation));
  rect(x, y, cubeSize, cubeSize);
}

function update() {
  if (spin && rotation < 360) {
    rotation++;
  }
}

function reset(){
  rotation = 0;
}
