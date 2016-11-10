var nums = [100, 200, 300, 400, 500, 600]

function setup() {
  createCanvas(720, 720);
}

function draw() {
  background(0);

  stroke(255);

  for (var i = 0; i < nums.length; i++) {
    ellipse(nums[i], height / 2, i * 10 + 10, i * 10 + 10);
  }
}