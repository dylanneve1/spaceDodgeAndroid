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
    player.caller();
  }
}