class handler {
  
  void playerGetLifeEvent() {
      player.lives += 1;
  }
  
  void playerMoveEvent()
  {
    if (player.moveRight == true)
    {
      player.x += player.move;
    }
    if (player.moveLeft == true)
    {
      player.x -= player.move;
    }
  }
}
