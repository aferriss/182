int w, h;
int eyeY;
int eyeDist = 200;
int pupilSize = 10;
int pupilOffset = 0;
int eyeSize = 60;
int blush = 0;
int omg = 0;

void setup(){
  size(1000, 1000);
  w = width;
  h = height;
  
  eyeY = h/4;  
}

void draw(){
  background(0);
    
  ////////////////////////////////////////////////////
  //antennae
  ////////////////////////////////////////////////////
  float randX = random(-10,10);
  float randY = random(-10,10);
  float shakeX = map(mouseY, 0, height, 0, randX);
  float shakeY = map(mouseY, 0, height, 0, randY);
  
  
  strokeWeight(10);
  stroke(255,210,220);
  
  //left antenna
  fill(255, 180, 200);
  line(50 + shakeX, 50 + shakeY, 200, 200);
  
  //right antenna
  fill(255, 180, 200);
  line(w - 50 + shakeX, 50 + shakeY, w - 200, 200);
  ////////////////////////////////////////////////////
  
  noStroke();
  
  //neck
  ////////////////////////////////////////////////////
  rect(w/2 - 100, h-100, 200, 200);
  ////////////////////////////////////////////////////
  
  //pink face
  ////////////////////////////////////////////////////
  fill(255, 180,200);
  ellipse(w/2, h/2, w - 100, h - 100);
  ////////////////////////////////////////////////////
  
  //eyes
  ////////////////////////////////////////////////////
  eyeSize =(int)map(mouseX, 0, width, 0, 200);
  pupilSize = (eyeSize + 60) / 2;
  //under eye  
  fill(255, 200,220);
  stroke(255, 200,220);
  ellipse(w/2 - eyeDist, eyeY+10, 60 + eyeSize, 60 + eyeSize);
  ellipse(w/2 + eyeDist, eyeY+10, 60 + eyeSize, 60 + eyeSize);
  
  //eye stroke 
  stroke(255,210,220);
  
  //left eye
  fill(255);
  ellipse(w/2 - eyeDist, eyeY, 60 + eyeSize, 60 + eyeSize);
  
  //right eye
  fill(255);
  ellipse(w/2 + eyeDist, eyeY, 60 + eyeSize, 60 + eyeSize);  
  noStroke();

  //pupils
  fill(255 - blush*4,180 + blush,200);
  
  //left pupil
  ellipse(w/2 - eyeDist - eyeSize/4, eyeY, pupilSize, pupilSize);
  
  //right pupil
  ellipse(w/2 + eyeDist + eyeSize/4, eyeY, pupilSize, pupilSize);
  ////////////////////////////////////////////////////

  //mouth
  ////////////////////////////////////////////////////
  omg = (int)map(mouseY, 0, width, 0, 500);
  fill(0);
  stroke(180, 255,220);
  ellipse(w/2, h/2 + 300 - omg/4, 300, omg);
  ////////////////////////////////////////////////////

  //cheeks
  ////////////////////////////////////////////////////
  blush = (int)map(mouseY, 0, height, 0, 100);
  noStroke();
  fill(255,210 - blush,220 - blush);
  //left cheek
  ellipse(w/2 - 300, h/2, 150,150);
  
  //right cheek
  ellipse(w/2 + 300, h/2, 150,150);
  ////////////////////////////////////////////////////

  //nose
  ////////////////////////////////////////////////////
  noStroke();
  fill(200,255,255);
  ellipse(w/2-5,h/2+100 - omg/2, 5,10);
  ellipse(w/2+5,h/2+100 - omg/2, 5,10);
  ////////////////////////////////////////////////////

}