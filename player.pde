// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Player {

  // Player float variables.
  float x = displayWidth/2;
  float y = displayHeight*0.9;
  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;
  float playerLength = displayWidth*0.1;
  float move = displayWidth*0.015;

  // Player int variables.
  int lives = 10;

  // Player boolean variables.
  boolean moveLeft = false;
  boolean moveRight = false;

  // Call all sub-functions.
  public void call() {
    show();
    move();
    edgeDetect();
    dead();
    restrict();
    outputMovementToHandler();
    mouseReleased();
  }

  // Show player on screen.
  private void show() {
    imageMode(CENTER);
    image(ship, x, y, playerLength, playerLength);
  }

  // Takes raw movement input and toggles movement booleans to true if moving.
  private void move() {
    if (mousePressed == true) {
      if (mouseX > displayWidth/2 && mouseY > displayHeight/2 && moveLeft == false) {
        moveRight = true;
      }
      if (mouseX < displayWidth/2 && mouseY > displayHeight/2 && moveRight == false) {
        moveLeft = true;
      }
    }
  }

  // Calls out of bounds handler.
  private void restrict() {
    // Sent to handler.
    h.playerOutOfBoundsEvent();
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

  // Takes movement booleans and outputs them to movement handler.
  private void outputMovementToHandler() {
    // Send to handler.
    h.playerMoveEvent(moveLeft, moveRight);
  }

  // If the mouse (touchscreen) is released reset movement booleans.
  private void mouseReleased() {
    moveLeft = false;
    moveRight = false;
  }
}
