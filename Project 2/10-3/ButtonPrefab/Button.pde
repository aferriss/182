
class Button {
 Boolean mouseInside;
 float x, y, buttonWidth, buttonHeight;
 
 Button(float xPos, float yPos, float bW, float bH){
  x = xPos;
  y = yPos;
  buttonWidth = bW;
  buttonHeight = bH;
 }
 
 void draw(color c1, color c2){
   if(isInsideButton()){
     fill(c2);
     mouseInside = true;
   } else {
     fill(c1);
     mouseInside = false;
   }
     rect(x, y, buttonWidth, buttonHeight);
 }
 
 Boolean isInsideButton(){
    if(mouseX > x && mouseX < x+buttonWidth && mouseY > y && mouseY < y+buttonHeight ){
      return true;
    } else {
      return false;
    }
  }
}