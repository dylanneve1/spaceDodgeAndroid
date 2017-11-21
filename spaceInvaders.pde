Player player;
Enemy enemy;

void setup() {
  player = new Player();
  enemy = new Enemy();
  size(500, 500);
}

void draw() {
  enemy.var();
  background(0);
  text(millis(), 40, 40); 
  player.show();
  player.move();
  enemy.show();
  enemy.move();
}