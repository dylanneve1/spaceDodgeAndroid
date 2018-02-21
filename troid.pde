// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Troid {

  float x;
  float y;
  float yspeed = displayHeight*0.012;

  float rightEdge;
  float leftEdge;
  float topEdge;
  float bottomEdge;

  boolean notYetTapped = true;
  boolean collided = false;

  float r = displayHeight*0.04;

  Troid() 
  {
    x  = random(displayWidth);
    y  = random(displayHeight*-1, displayHeight*-0.1);
  }

  void respawn()
  {
    if(y >= displayHeight + (displayHeight/2))
    {
      y = random(displayHeight*-1, displayHeight*-0.1);
      x = random(displayWidth);
    }
  }

  void fall() 
  {
    y += yspeed;
    yspeed += displayHeight*0.0000012;
  }

  void show() 
  {
    imageMode(CENTER);
    image(asteriod, x, y, r, r);
  }

  void edgeDetect()
  {
    leftEdge = x - r/2;
    rightEdge = x + r/2;
    topEdge = y - r/2;
    bottomEdge = y + r/2;
  }

  void collide()
  {
    if (notYetTapped == true)
    {
      if (leftEdge <= player.rightEdge && rightEdge >= player.leftEdge && bottomEdge >= player.topEdge && bottomEdge <= player.bottomEdge)
      {
        //background(255);
        collided = true;
        notYetTapped = false;
      }
    }
  }


  void boop()
  {
    if (collided == true)
    {
      player.lives -= 1;
      background(255, 0, 0);
      collided = false;
    }
  }
}