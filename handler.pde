class handler {

  // Is called if player collides with a life entity.
  void playerGetLifeEvent() {
    player.lives += 1;
  }

  // Is called if player is in moving state.
  void playerMoveEvent(boolean moveLeft, boolean moveRight)
  {
    if (moveRight == true)
    {
      player.x += player.move;
    }
    if (moveLeft == true)
    {
      player.x -= player.move;
    }
  }

  // Kills player if out of bounds.
  void playerOutOfBoundsEvent() {
    if (player.rightEdge > displayWidth)
    {
      player.x = displayWidth - player.playerLength/2;
    }
    if (player.leftEdge < 0)
    {
      player.x = 0 + player.playerLength/2;
    }
  }
}
