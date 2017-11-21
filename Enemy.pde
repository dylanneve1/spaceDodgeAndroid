class Enemy {
  float[] places = new float[11]; 
  {
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
  float[] yPos = { -10, -10, -10, -10, -10, -10, -10, -10, -10, -10 } ;

  int spawnTimes;
  int start;

  boolean spawnStart = false;

  void show() {
    spawnTimes = millis() - menu.finalCount;
    if (spawnTimes >= 0000) {
      yPos[0] = yPos[0] + 3;
      rect(places[0], yPos[0], 20, 20);
      if (yPos[0] >= 500) {
        yPos[0] = -10;
      }
    }
    if (spawnTimes >= 1500) {
      yPos[1] = yPos[1] + 3;
      rect(places[1], yPos[1], 20, 20);
      if (yPos[1] >= 500) {
        yPos[1] = -10;
      }
    }
    if (spawnTimes >= 3000) {
      yPos[2] = yPos[2] + 3;
      rect(places[2], yPos[2], 20, 20);
      if (yPos[2] >= 500) {
        yPos[2] = -10;
      }
    }
    if (spawnTimes >= 4500) {
      yPos[3] = yPos[3] + 3;
      rect(places[2], yPos[2], 20, 20);
      if (yPos[3] >= 500) {
        yPos[3] = -10;
      }
    }
    if (spawnTimes >= 6000) {
      yPos[4] = yPos[4] + 3;
      rect(places[4], yPos[4], 20, 20);
      if (yPos[4] >= 500) {
        yPos[4] = -10;
      }
    }
    if (spawnTimes >= 7500) {
      yPos[5] = yPos[5] + 3;
      rect(places[5], yPos[5], 20, 20);
      if (yPos[5] >= 500) {
        yPos[5] = -10;
      }
    }
    if (spawnTimes >= 9000) {
      yPos[6] = yPos[6] + 3;
      rect(places[6], yPos[6], 20, 20);
      if (yPos[6] >= 500) {
        yPos[6] = -10;
      }
    }
    if (spawnTimes >= 10500) {
      yPos[7] = yPos[7] + 3;
      rect(places[7], yPos[7], 20, 20);
      if (yPos[7] >= 500) {
        yPos[7] = -10;
      }
    }
    if (spawnTimes >= 12000) {
      yPos[8] = yPos[8] + 3;
      rect(places[8], yPos[8], 20, 20);
      if (yPos[8] >= 500) {
        yPos[8] = -10;
      }
    }
    if (spawnTimes >= 13500) {
      yPos[9] = yPos[9] + 3;
      rect(places[9], yPos[9], 20, 20);
      if (yPos[9] >= 500) {
        yPos[9] = -10;
      }
    }
    spawnStart = true;
  }
  void move() {
    y = y + 2;
  }

  void var() {
    if (spawnStart == false) {
      x = random(0, 500);
    }
  }
}