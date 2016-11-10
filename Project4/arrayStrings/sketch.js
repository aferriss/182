var words = ["puppies", "kittens", "ducks", "elephants", "monsters"];

var index = 0;

function setup() {
  createCanvas(720, 720);
}

function draw() {
  background(0);

  fill(255);
  textSize(50);
  text(words[index], 30, height / 2);

}

function mousePressed(){
  index = index + 1;
  
  if( index == words.length){
    index = 0;
  }
}