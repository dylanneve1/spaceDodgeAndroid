class Menus
{

  boolean menuActive = false;
  boolean gameActive = true;

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
    // Meh I'll do it later lol.
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