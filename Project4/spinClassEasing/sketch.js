var anim;

function setup() {
  createCanvas(720, 720);
  rectMode(CENTER);

  anim = new Animation();
}

function draw() {
  background(80);
  anim.update();
  anim.display();
}

function mousePressed(){
  anim.reset();
  anim.spin = true;
}

function Animation() {
  this.x = 0;
  this.y = 0;

  this.width = 100;
  this.height = 100;

  this.rotation = 0;
  this.easing = 0.05;
  this.spin = false;

  this.display = function() {
    stroke(20, 250, 225);
    noFill();

    translate(width / 2, height / 2);
    rotate(radians(this.rotation));
    rect(this.x, this.y, this.width, this.height);
  }

  this.update = function() {
    if (this.spin) {
      var target = 360;
      var difference = target - this.rotation;
      this.rotation += difference * this.easing;
    }
  }

  this.reset = function(){
    this.rotation = 0;
  }

}