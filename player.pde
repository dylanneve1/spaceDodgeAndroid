// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Player {

  // Player float variables.
  float x = displayWidth/2;
  float y = displayHeight*0.8;
  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;
  float playerLength = displayWidth*0.1;
  float move = displayWidth*0.015;

  // Player int variables.
  int lives = 10;

  // Player boolean variables.
  boolean mounted = false;

  // Call all sub-functions.
  public void call() {
    show();
    move();
    edgeDetect();
    dead();
  }

  // Show player on screen.
  private void show() {
    imageMode(CENTER);
    image(ship, x, y, playerLength, playerLength);
  }

  // Takes raw movement input and toggles movement booleans to true if moving.
  private void move() {
    // Send to handler.
    if (mousePressed && mouseX >= leftEdge && mouseX <= rightEdge) {
      mounted = true;
    }
    if (mounted == true) {
      h.playerMoveEvent(mouseX);
    }
  }

  // If player is dead end the game.
  private void dead() {
    if (lives <= -1) {
      // Send to handler.
      h.playerDeadEvent();
    }
  }

  // Create values for the edges of the player.
  private void edgeDetect() {
    leftEdge = x - playerLength/2;
    rightEdge = x + playerLength/2;
    topEdge = y - playerLength/2;
    bottomEdge = y + playerLength/2;
  }
}
