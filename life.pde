class Life
{
  float x;
  float y;
  float yspeed = displayWidth*0.02;
  float r = displayHeight*0.04;

  float rightEdge;
  float leftEdge;
  float topEdge;
  float bottomEdge;

  boolean collided = false;
  boolean notYetTapped = true;

  Life() {
    x  = random(width);
    y  = random(-500, -50);
  }

  void fall() 
  {
    y += yspeed;
  }

  void show()
  {
    ellipseMode(CENTER);
    fill(0, 255, 0);
    if (notYetTapped == true)
    {
      ellipse(x, y, r, r);
    }
  }

  void respawn()
  {
    if (y >= displayHeight + (displayHeight/2))
    {
      y = random(displayHeight*-1, displayHeight*-0.1);
      x = random(displayWidth);
      notYetTapped = true;
    }
  }

  void edgeDetect()
  {
    leftEdge = x - r/2;
    rightEdge = x + r/2;
    topEdge = y - r/2;
    bottomEdge = y + r/2;
  }

  void collision()
  {
    if (notYetTapped == true)
    {
      if (leftEdge <= player.rightEdge && rightEdge >= player.leftEdge && bottomEdge >= player.topEdge && bottomEdge <= player.bottomEdge)
      {
        collided = true;
        notYetTapped = false;
        Vibrator vibrer = (Vibrator)   act.getSystemService(Context.VIBRATOR_SERVICE);
        vibrer.vibrate(100);
        powerUp.play();
      }
    }
  }

  void getOneUp()
  {
    if (collided == true)
    {
      player.lives += 1;
      collided = false;
    }
  }
  
  void reset()
  {
    if(menu.dead == true)
    {
      y  = random(displayHeight*-1, displayHeight*-0.1);
    }
  }
}