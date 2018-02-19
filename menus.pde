class Menus
{

  boolean menuActive = true;
  boolean gameActive = false;

  void caller()
  {
    if (menuActive == true)
    {
      menu();
    }
    if (gameActive == true)
    {
      game();
    }
  }

  void menu()
  {
    background(0);
    textAlign(CENTER);
    fill(255);
    textSize(30);
    text("SPACE DODGE", 250, 225);
    textSize(15);
    text("Tap to play...", 250, 275);
    if(mousePressed == true)
    {
      menuActive = false;
      gameActive = true;
    }
  }

  void game()
  {
    background(0);
    textAlign(CENTER);
    fill(255);
    text("Lives : " + player.lives, 250, 100);
    player.caller();
    for (int i = 0; i < troid.length; i++) {
      troid[i].fall();
      troid[i].show();
      troid[i].edgeDetect();
      troid[i].collide();
      troid[i].boop();
    }
  }
}