// Button is a class that takes (X, Y, Width, Height)
// We must use the new syntax to create a button

Button button1 = new Button(240, 310, 200,100);
Button button2 = new Button(540, 260, 200,200);
Button button3 = new Button(840, 310, 200,100);


color buttonColor1 = color(255, 0, 0);
color hoverColor1= color(0, 0, 255);

color buttonColor2 = color(200,255,200);
color hoverColor2 = color(255,100,255);

color buttonColor3 = color(255,255,0);
color hoverColor3 = color(255,150,0);


void setup(){
  
  size(1280,720);
  textAlign(CENTER, CENTER);
  
}




void draw(){
  background(255);
  // button.draw() is a function of button that takes two colors
  // The first color is the normal color, the second is the hover
  noStroke();
  button1.draw(buttonColor1, hoverColor1);
  fill(0);
  text("DING DONG", button1.x + button1.buttonWidth/2, button1.y + button1.buttonHeight/2);
  
  button2.draw(buttonColor2, hoverColor2);
  button3.draw(buttonColor3, hoverColor3);
}