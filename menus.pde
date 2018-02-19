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
    //background(0);
    player.caller();
    for (int i = 0; i < troid.length; i++) {
      troid[i].fall();
      troid[i].show();
      troid[i].collide();
    }
  }
}