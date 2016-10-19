class Stamp {
  int stampWidth;
  int stampHeight;

  PImage stampImage;

  int stampX;
  int stampY;
  
  Stamp(PImage stampImg){
    stampImage = stampImg;
    stampWidth = stampImg.width;
    stampHeight = stampImg.height;
  }

  void draw(int sX, int sY) {
    if (mousePressed) {
      image(stampImage, sX - stampWidth/2, sY - stampHeight/2, stampWidth, stampHeight);
    }
    
    stampX = sX;
    stampY = sY;
  }

  void bigger(int amt) {
    stampWidth = stampWidth + amt;
    stampHeight = stampHeight + amt;
  }

  void smaller(int amt) {
    //only make smaller if bigger than 0
    if (stampWidth - amt > 0) {
      stampWidth = stampWidth - amt;
      stampHeight = stampHeight - amt;
    }
  }
  
  void changeStamp(PImage newStamp){
   stampImage = newStamp;
  }
}