class Life
{
  float x;
  float y;
  float yspeed;
  
  Life() {
    x  = random(width);
    y  = random(-500, -50);
  }
  
  void fall() {
    y += yspeed;
  }
}