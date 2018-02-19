// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Player
{

  float x = displayWidth/2;
  float y = displayHeight*0.9;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  int lives = 10;

  float r = displayHeight*0.1;

  void caller()
  {
    show();
    move();
    edgeDetect();
    dead();
  }

  void show()
  {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, r, r);
  }

  void move()
  {
    if (keyPressed == true)
    {
      if (key == 'a')
      {
        x -= displayWidth*0.01;
      }
      if (key == 'd')
      {
        x += displayWidth*0.01;
      }
      if (leftEdge <= 0)
      {
        x += displayWidth*0.01;
      } else if (rightEdge >= 500)
      {
        x -= displayWidth*0.01;
      }
    }
  }

  void dead()
  {
    if (lives == -1)
    {
      menu.gameActive = false;
      menu.dead = true;
    }
  }

  void edgeDetect()
  {
    leftEdge = x - r/2;
    rightEdge = x + r/2;
    topEdge = y - r/2;
    bottomEdge = y + r/2;
  }
}