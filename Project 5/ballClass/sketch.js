var ball;

function setup() {
  createCanvas(windowWidth, windowHeight);
  ball =new Ball();
}

function draw() {
  background(80);
  ball.display();
  ball.move();
}


function Ball() {
  this.x = windowWidth / 2;
  this.y = windowHeight / 2;
  this.speedX = random(-5, 5);
  this.speedY = random(-5, 5);

  this.ballSize = 10;

  this.display = function() {
    noStroke();
    fill(255);
    rect(this.x, this.y, this.ballSize, this.ballSize);
  }

  this.move = function() {
    this.x = this.x + this.speedX;
    this.y = this.y + this.speedY;

    if (this.y < 0 || this.y > windowHeight) {
      this.speedY *= -1;
      this.y += this.speedY;
    }
  }
}