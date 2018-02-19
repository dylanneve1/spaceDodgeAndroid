Player player;
Enemy enemy;
Menu menu;

void setup() {
  player = new Player();
  enemy = new Enemy();
  menu = new Menu();
  size(500, 500);
  enemy.start = millis();
}

void draw() {
  if (menu.menuShow == true) {
    menu.show();
  }
  if (menu.gameShow == true) {
    enemy.var();
    background(0);
    text(enemy.spawnTimes, 40, 40); 
    player.show();
    player.move();
    enemy.show();
    enemy.move();
  }
}