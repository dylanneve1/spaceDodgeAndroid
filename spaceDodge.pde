Menus menu;
Player player;
Troid[] troid = new Troid[1000];

void setup()
{
  menu = new Menus();
  player = new Player();
  for (int i = 0; i < troid.length; i++) {
    troid[i] = new Troid();
  }
  size(500, 500);
}

void draw()
{
  menu.caller();
}