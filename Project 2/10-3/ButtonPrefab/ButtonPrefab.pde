//Button is a class that takes (X, Y, Width, Height)
//We must use the new syntax to create a button
Button button1 = new Button(540, 310, 200,100);

color buttonColor = color(255, 0, 0);
color hoverColor = color(0, 0, 255);

void setup(){
  
  size(1280,720);
  
}




void draw(){
  background(255);
  
  //button.draw() is a function of button that takes two colors
  //The first color is the normal color, the second is the hover
  button1.draw(buttonColor, hoverColor);
  
  
}