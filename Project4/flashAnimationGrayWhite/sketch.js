var flashColor; // = color(180);
var switchColor = false;
var doFlash = false;
var flashCount = 0;
function setup() {
  createCanvas(720, 720);
  flashColor = color(255);
}

function draw() {
  background(180);
  if (doFlash) {
    flash();
  }
  
  if(flashCount > 10){
    doFlash = false;
    flashCount = 0;
  }
}

function mousePressed(){
  doFlash = true;
}

function flash() {
  var color1 = color(255);
  var color2 = color(180);

  if (frameCount % 5 == 0) {
    if (switchColor) {
      flashColor = color1
    } else {
      flashColor = color2;
    }
    switchColor = !switchColor;
    flashCount ++;
  }

  fill(flashColor);
  noStroke();
  rect(0, 0, width, height);
}