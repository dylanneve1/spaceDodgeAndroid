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

  // Handle what happens when player dies.
  public void playerDeadEvent() {
    p.lives = 10;
    m.gameActive = false;
    m.deadActive = true;
  }
}
