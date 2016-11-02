var anim;

function setup() {
  createCanvas(720, 720);
  anim = new Animation();
}

function draw() {
  if (anim.doAnim) {
    anim.update();
  }

  anim.draw();
}

function mousePressed() {
  anim.doAnim = true;
}

function Animation() {
  this.x = 0;
  this.y = 0;

  this.width = width;
  this.height = height;

  this.bgColor = color(255, 0, 0);
  this.frontColor = color(0, 255, 0);

  this.easing = 0.1;
  this.doAnim = false;

  this.draw = function() {
    noStroke();

    fill(this.bgColor);
    rect(0, 0, width, height);

    fill(this.frontColor);
    rect(this.x, this.y, this.width, this.height);
  }

  this.update = function() {
    if (this.doAnim) {
      var target = width + 10;
      var difference = target - this.x;
      this.x += difference * this.easing;
    }
    
    if (this.x >= target - 10) {
      this.x = 0;
      this.doAnim = false;
    }
  }

}