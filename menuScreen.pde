class Menu {
  
  PImage spaceBackground;
  boolean menuShow = true;
  boolean gameShow = false;
  int finalCount;
  
  void show() {
    spaceBackground = loadImage("space.jpg");
    if(menuShow == true) {
      image(spaceBackground, -380, 0);
      textSize(50);
      text("Space Invaders", 80, 120);
      textSize(30);
      text("Press R to start", 140, 200);
    }
    if(keyPressed == true) {
      if(key == 'r') {
        finalCount = millis();
        enemy.spawnTimes = 0;
        menuShow = false;
        gameShow = true;
      }
    }
  }
}
      
      
      
      
      