// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class handler {

  // Is called if player collides with a life entity.
  public void playerGetLifeEvent() {
    p.lives += 1;
  }

  // Is called if player is in moving state.
  public void playerMoveEvent(float position) {
    p.x = position;
  }

  // Kills player if out of bounds.
  public void playerOutOfBoundsEvent() {
    if (p.rightEdge > displayWidth) {
      p.x = displayWidth - p.playerLength/2;
    }
    if (p.leftEdge < 0) {
      p.x = 0 + p.playerLength/2;
    }
  }

  // Handle what happens when player dies.
  public void playerDeadEvent() {
    p.lives = 10;
    m.gameActive = false;
    m.deadActive = true;
  }
}
