function setup() {
  createCanvas(720,720);
  
  noFill();
  strokeWeight(5);
  stroke(20,200,255);
  
  rectMode(CENTER);
}

function draw() {
  background(80);
  
  var speed = 0.05;
  var amplitude = 300;
  var wavelength = frameCount;
  var sineWave = sin(wavelength * speed)*amplitude;
  var cosWave = cos(wavelength * speed)*amplitude;
  
  translate(width/2 + sineWave, height/2 + cosWave);
  rotate(frameCount * speed);
  rect(0,0, 100,100);
}