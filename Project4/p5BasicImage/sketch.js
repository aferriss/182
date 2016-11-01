var img;

//preload the image
function preload() {
  img = loadImage("assets/img.jpg");
}

function setup() {
  createCanvas(windowWidth, windowHeight)
}

function draw() {
  background(255);
  //draw the image in the center of the screen
  image(img, windowWidth / 2 - img.width / 2, windowHeight / 2 - img.height / 2);
}

function windowResized() {
  //resize the canvas if the window changes shape
  resizeCanvas(windowWidth, windowHeight);
}