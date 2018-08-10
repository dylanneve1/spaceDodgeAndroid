// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class mHandler {

  boolean rightPressed() {
    if (mouseX > displayWidth/2 && mouseY > displayHeight/2 && p.moveLeft == false) {
      return true;
    } else {
      return false;
    }
  }

  boolean leftPressed() {
    if (mouseX < displayWidth/2 && mouseY > displayHeight/2 && p.moveRight == false) {
      return true;
    } else {
      return false;
    }
  }
}
