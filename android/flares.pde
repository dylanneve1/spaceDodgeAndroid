// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Flares {
  float x;
  float y;
  float z;
  float len;
  float yspeed;

  Flares() {
    x  = random(displayWidth);
    y  = random(displayHeight/-1, displayHeight*-0.1);
    len = map(z, 0, 20, 10, 20);
    yspeed  = map(z, 0, 20, 1, 20);
  }

  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;

    if (y > height) {
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }

  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    //stroke(138, 43, 226);
    stroke(255);
    line(x, y, x, y+len);
  }
}