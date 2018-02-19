class Player
{

  float x = 250;
  float y = 450;

  float leftEdge;
  float rightEdge;

  void caller()
  {
    show();
    move();
    edgeDetect();
  }

  void show()
  {
    rectMode(CENTER);
    rect(x, y, 50, 50);
  }

  void move()
  {
    if (keyPressed == true)
    {
      if (key == 'a')
      {
        x -= 5;
      }
      if (key == 'd')
      {
        x += 5;
      }
      if (leftEdge <= 0)
      {
        x += 5;
      } else if (rightEdge >= 500)
      {
        x -= 5;
      }
    }
  }

  void edgeDetect()
  {
    leftEdge = x - 25;
    rightEdge = x + 25;
  }
}