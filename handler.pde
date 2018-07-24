// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class handler {

  // Is called if player collides with a life entity.
  public void playerGetLifeEvent() {
    player.lives += 1;
  }

  // Is called if player is in moving state.
  public void playerMoveEvent(boolean moveLeft, boolean moveRight)
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
  public void playerOutOfBoundsEvent() {
    if (player.rightEdge > displayWidth)
    {
      player.x = displayWidth - player.playerLength/2;
    }
    if (player.leftEdge < 0)
    {
      player.x = 0 + player.playerLength/2;
    }
  }

  // Handle what happens when player dies.
  public void playerDeadEvent() {
    player.lives = 10;
    menu.gameActive = false;
    menu.deadActive = true;
  }
}
