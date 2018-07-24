// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Troid {

  // Troid float variables.
  float x;
  float y;
  float yspeed = displayHeight*0.012;
  float r = displayHeight*0.04;
  float rightEdge;
  float leftEdge;
  float topEdge;
  float bottomEdge;
  float ySpeedIncrease = 0;

  // Troid boolean variables.
  boolean notYetTapped = true;
  boolean collided = false;

  // Creates a random x and y for each generated Troid.
  Troid() {
    x  = random(displayWidth);
    y  = random(displayHeight*-1, displayHeight*-0.1);
  }

  // Call all sub-funtions.
  public void call() {
    reset();
    respawn();
    fall();
    show();
    edgeDetect();
    collide();
    boop();
  }

  // If the Troid has finished it's run across the screen respawn it at the top.
  private void respawn() {
    if (y >= displayHeight + (displayHeight/2)) {
      y = random(displayHeight*-1, displayHeight*-0.1);
      x = random(displayWidth);
      notYetTapped = true;
    }
  }

  // Have the Troids fall over time and grow faster over time.
  private void fall() {
    y += yspeed;
    yspeed += displayHeight*0.0000012;
  }

  // Show Troid on screen.
  private void show() {
    imageMode(CENTER);
    image(asteriod, x, y, r, r);
  }

  // Created values for the edge of troids.
  private void edgeDetect() {
    leftEdge = x - r/2;
    rightEdge = x + r/2;
    topEdge = y - r/2;
    bottomEdge = y + r/2;
  }

  // Detect if the Troid has hit the player and output into collided variable.
  private void collide() {
    if (notYetTapped == true) {
      if (leftEdge <= player.rightEdge && rightEdge >= player.leftEdge && bottomEdge >= player.topEdge && bottomEdge <= player.bottomEdge) {
        Vibrator vibrer = (Vibrator)   act.getSystemService(Context.VIBRATOR_SERVICE);
        vibrer.vibrate(100);
        collided = true;
        notYetTapped = false;
      }
    }
  }

  // If collided then...
  private void boop() {
    if (collided == true) {
      bang.play();
      player.lives -= 1;
      background(255, 0, 0);
      collided = false;
    }
  }

  // Reset all data if game ends.
  private void reset() {
    if (menu.deadActive == true) {
      y  = random(displayHeight*-1, displayHeight*-0.1);
      yspeed = displayHeight*0.012;
    }
  }
}
