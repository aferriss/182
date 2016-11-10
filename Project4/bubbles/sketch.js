var bubbles = [];

function setup() {
  createCanvas(720, 720);

  // for(var i = 0; i < 300; i++){
  //   bubbles.push(new Bubble());
  // }
  background(0);
}

function draw() {
  noStroke();
  fill(0, 8);
  rect(0,0,width, height);

  for (var i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].move();
  }

  if (bubbles.length > 100) {
    bubbles.splice(0, 1);
  }
}

function mouseDragged() {
  bubbles.push(new Bubble(mouseX, mouseY));
}


function Bubble(x, y) {
  this.x = x;
  this.y = y;

  this.diameter = random(20);
  
  this.color = color(random(120,255), 100,100)

  this.display = function() {
    fill(255,200,200,150);
    stroke(this.color);
    strokeWeight(2);
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }

  this.move = function() {
    this.x = this.x + random(-1, 1);
    this.y = this.y + random(-1, 1) - 1;

    if (this.y < -30) {
      this.y = height + 30;
    }

  }
}