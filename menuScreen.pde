class Menu {
  
  PImage spaceBackground;
  boolean menuShow = true;
  boolean gameShow = false;
  int finalCount;
  
  void show() {
    spaceBackground = loadImage("space.jpg");
    if(menuShow == true) {
      image(spaceBackground, 0, 0, 500, 500);
      textAlign(CENTER);
      textSize(50);
      text("Space Dodge", 250, 200);
      textSize(25);
      text("Tap to start...", 250, 250);
      if(mousePressed == true)
      {
        menuShow = false;
      }
    }
  }
}
      
      
      
      
      