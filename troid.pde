class Troid {
  float x;
  float y;
  float z;
  float yspeed = 6;

  Troid() 
  {
    x  = random(width);
    y  = random(-100000, -50);
    z  = random(0, 20);
  }

  void fall() 
  {
    y = y + yspeed;
  }

  void show() 
  {
    strokeWeight(2);
    stroke(138, 43, 226);
    rect(x, y, 60, 20);
  }

  void collide()
  {
  }
}