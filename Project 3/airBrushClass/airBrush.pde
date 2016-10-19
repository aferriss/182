class AirBrush {
  int brushDensity;
  int brushSize;
  int paintSize;
  color brushColor;
  int x;
  int y;


  AirBrush(int bD, int bS,int pS, color c) {
    brushDensity = bD;
    brushSize = bS;
    paintSize = pS;
    brushColor = c;
  }


  void draw(int xPos, int yPos) {
    noStroke();
    fill(brushColor);
    for (int i = 0; i<brushDensity; i++) { 
      ellipse(sin(frameCount*i)*random(-brushSize, brushSize)+xPos, cos(frameCount*i)*random(-brushSize, brushSize)+yPos, paintSize, paintSize);
    }
  }
}