var img;

function preload(){
  img = loadImage("data/img.png");
}

function setup() {
  createCanvas(720,720);
}

function draw() {
  image(img, 0,0, width, height);
}