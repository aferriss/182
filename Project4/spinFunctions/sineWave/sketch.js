function setup() {
  createCanvas(720, 720);
  rectMode(CENTER);
  strokeWeight(3);
  stroke(30, 255, 180);
  noFill();
}

function draw() {
  background(80);

  var speed = 0.05;
  var amplitude = 300;
  var wavelength = frameCount;
  var sineWave = sin(wavelength*speed)*amplitude;
  var cosWave = cos(wavelength*speed)*amplitude;
  
  translate(width / 2 + sineWave, height / 2 + cosWave);
  rotate(frameCount * 0.1);
  rect(0,0, 100, 100);
}