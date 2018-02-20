// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Player
{

  float x = 250;
  float y = 450;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  int lives = 10;

  int score = 0;
  int highScore = 0;

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
    rect(x, y, 50, 50);
    score += 1;
  }

  void move()
  {
    if (mousePressed == true)
    {
      if (mouseX > displayWidth/2)
      {
        x += displayWidth*0.02;
      }
      if (mouseX < displayWidth/2)
      {
        x -= displayWidth*0.02;
      }
    }
  }

  void dead()
  {
    if (lives == -1)
    {
      highScore = score;
      score = 0;
      menu.gameActive = false;
      menu.dead = true;
    }
  }

  void edgeDetect()
  {
    leftEdge = x - 25;
    rightEdge = x + 25;
    topEdge = y - 25;
    bottomEdge = y + 25;
  }
}