class Life
{
  float x;
  float y;
  float yspeed = displayWidth*0.02;
  float r = displayHeight*0.04;
  
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
    ellipse(x, y, r, r);
  }
  
  void respawn()
  {
    if(y >= displayHeight + (displayHeight/2))
    {
      y = random(displayHeight*-1, displayHeight*-0.1);
      x = random(displayWidth);
    }
  }
}