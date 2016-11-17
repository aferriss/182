var pong;

function setup() {
  createCanvas(720, 720);
  pong = new Game();
}

function draw() {
  background(0);

  pong.display();
  pong.move();
}

function mousePressed(){
  pong.started = true;
}

function Game() {
  this.player1 = new Paddle(30, 30, 20, 200);
  this.player2 = new Paddle(width - 30, 30, 20, 200);

  this.ball = new Ball();

  this.player1Score = 0;
  this.player2Score = 0;

  this.started = false;

  this.startScreen = function() {
    textSize(60);
    fill(255, 0, 0);
    text("PONG:", 100, 200);
    text("THE GAME", 100, 300);
    textSize(32);
    text("Click to start", 100, 400);
  }

  this.display = function() {
    if (this.started) {
      this.player1.display();
      this.player2.display();
      this.ball.display();
    } else {
      this.startScreen();
    }
  }

  this.move = function() {
    this.player1.move();
    this.player2.move();

    this.ball.bounce(this.player1);
    this.ball.bounce(this.player2);

    this.ball.move();

    this.score();
  }

  this.score = function() {
    textSize(32);
    fill(255);
    text(this.player1Score, windowWidth / 4, 50);
    text(this.player2Score, windowWidth / 4 * 3, 50);

    if (this.ball.x > windowWidth) {
      this.player1Score++;
      this.ball.reset();
    }

    if (this.ball.x + this.ball.size < 0) {
      this.player2Score++;
      this.ball.reset();
    }
  }
}

function Paddle(x, y, width, height) {
  this.x = x;
  this.y = y;

  this.width = width;
  this.height = height;

  this.color = color(255);

  this.display = function() {
    noStroke();
    fill(this.color);
    rect(this.x, this.y - this.height / 2, this.width, this.height);
  }

  this.move = function() {
    this.y = constrain(mouseY, 0 + this.height / 2, windowHeight - this.height / 2);
  }
}


function Ball() {
  this.x = windowWidth / 2;
  this.y = windowHeight / 2;

  this.speedX = random(-5, 5);
  this.speedY = random(-5, 5);

  this.size = 10;

  this.display = function() {
    noStroke();
    fill(255);
    rect(this.x, this.y, this.size, this.size);
  }

  this.move = function() {
    this.x += this.speedX;
    this.y += this.speedY;

    if (this.y > windowHeight || this.y < 0) {
      this.speedY *= -1;
      this.y += this.speedY;
    }
  }

  this.bounce = function(paddle) {
    if (this.isInside(paddle.x, paddle.y, paddle.width, paddle.height)) {
      this.speedX *= -1.0;
      this.x += this.speedX;
    }
  }

  this.isInside = function(x, y, w, h) {
    if (this.x + this.size > x && this.x < x + w && this.y > y - h / 2 && this.y < y + h / 2) {
      return true;
    } else {
      return false;
    }
  }

  this.reset = function() {
    this.x = windowWidth / 2;
    this.y = windowHeight / 2;

    this.speedX = random(-5, 5);
    this.speedY = random(-5, 5);
  }

}