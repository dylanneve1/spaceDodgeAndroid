class Player
{
  
  float x = 250;
  float y = 450;
  
  void caller()
  {
    show();
  }
  
  void show()
  {
    rectMode(CENTER);
    rect(x, y, 50, 50);
  }
}