class Enemy {
  float[] places = new float[11]; {
    places[0] = random(0, 500);
    places[1] = random(0, 500);
    places[2] = random(0, 500);
    places[3] = random(0, 500);
    places[4] = random(0, 500);
    places[5] = random(0, 500);
    places[6] = random(0, 500);
    places[7] = random(0, 500);
    places[8] = random(0, 500);
    places[9] = random(0, 500);
    places[10] = random(0, 500);
  }
  float x;
  float y = -10;
  float[] yPos = { -10, -10, -10, -10, -10, -10, -10, -10 } ;
  
  boolean spawnStart = false;
  
  void show() {
    if(millis() >= 0000) {
      yPos[0] = yPos[0] + 3;
      rect(places[0], yPos[0], 20, 20);
    }
    if(millis() >= 1500) {
      yPos[1] = yPos[1] + 3;
      rect(places[1], yPos[1], 20, 20);
    }
    if(millis() >= 3000) {
      yPos[2] = yPos[2] + 3;
      rect(places[2], yPos[2], 20, 20);
    }
    spawnStart = true;
  }
  void move() {
    y = y + 2;
  }
  
  void var() {
    if(spawnStart == false) {
      x = random(0, 500);
    }
  }
}