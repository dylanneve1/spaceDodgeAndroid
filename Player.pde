class Player {
  float x = 250;
  float y = 450;

  void show() {
    rectMode(CENTER);
    fill(255);
    rect(x, y, 50, 50);
    fill(255, 0, 0);
    rect(x, y - 10, 20, 10);
  }

  void move() {
    if (keyPressed == true) {
      if (key == 'd') {
        x = x + 4;
      }
      if (key == 'a') {
        x = x - 4;
      }
    }
  }
}