function setup() { // void setup() is now function setup()
  createCanvas(windowWidth, windowHeight);  //size() is now createCanvas()
  noStroke(); //noStroke() is the same
}

function draw() { // void draw() is now function draw()
  background(0); //background is the same
  
  fill(255,0,0); // fill is the same
  rect(windowWidth/2 - 100, windowHeight/2 - 100, 200,200) // rect is the same
  
  fill(0,0,255); // fill is the same
  ellipse(100,100,100,100);  // ellipse is the same
}