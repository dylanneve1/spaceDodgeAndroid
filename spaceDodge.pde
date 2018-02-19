Menus menu;
Player player;
Troid troid;

void setup()
{
  menu = new Menus();
  player = new Player();
  troid = new Troid();
  size(500, 500);
}

void draw()
{
  menu.caller();
}