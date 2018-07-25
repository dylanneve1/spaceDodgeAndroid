// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

// STABLE BRANCH

class Life {

  // Life float variables.
  float x;
  float y;
  float yspeed = displayWidth*0.02;
  float r = displayHeight*0.04;
  float rightEdge;
  float leftEdge;
  float topEdge;
  float bottomEdge;

  // Life boolean variables.
  boolean collided = false;
  boolean notYetTapped = true;

  // Create random x and y for each life spawned.
  Life() {
    x  = random(width);
    y  = random(-500, -50);
  }

  // Call all sub-functions.
  public void call() {
    fall();
    show();
    respawn();
    edgeDetect();
    collision();
    getOneUp();
    reset();
  }

  // Make life fall over time.
  private void fall() {
    y += yspeed;
  }

  // Show life on screen.
  private void show() {
    ellipseMode(CENTER);
    fill(0, 255, 0);
    if (notYetTapped == true) {
      ellipse(x, y, r, r);
    }
  }

  // Respawn when life has finished it's run.
  private void respawn() {
    if (y >= displayHeight + (displayHeight/2)) {
      y = random(displayHeight*-1, displayHeight*-0.1);
      x = random(displayWidth);
      notYetTapped = true;
    }
  }

  // Create values for edges of life entity.
  private void edgeDetect() {
    leftEdge = x - r/2;
    rightEdge = x + r/2;
    topEdge = y - r/2;
    bottomEdge = y + r/2;
  }

  // Detect if player has hit a life.
  private void collision() {
    if (notYetTapped == true) {
      if (leftEdge <= p.rightEdge && rightEdge >= p.leftEdge && bottomEdge >= p.topEdge && bottomEdge <= p.bottomEdge) {
        collided = true;
        notYetTapped = false;
        Vibrator vibrer = (Vibrator)   act.getSystemService(Context.VIBRATOR_SERVICE);
        vibrer.vibrate(100);
        powerUp.play();
      }
    }
  }

  // Give player a life if collided and turn off colision.
  private void getOneUp() {
    if (collided == true) {
      // Send to handler.
      h.playerGetLifeEvent();
      collided = false;
    }
  }

  // Reset all life data if game ends.
  private void reset() {
    if (m.deadActive == true) {
      y  = random(displayHeight*-1, displayHeight*-0.1);
    }
  }
}
