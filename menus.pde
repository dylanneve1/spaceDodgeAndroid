// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Menus {

  // Menu boolean variables.
  boolean menuActive = true;
  boolean gameActive = false;
  boolean deadActive = false;
  boolean justDont = false;

  // Call sub-function depending on what screen is active.
  public void call() {
    mouseReleased();
    if (menuActive == true) {
      menu();
    }
    if (gameActive == true) {
      game();
    }
    if (deadActive == true) {
      dead();
    }
  }

  private void menu() {
    imageMode(CORNER);
    image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    textSize(displayHeight*0.06);
    text("Space Dodge", displayWidth/2, displayHeight*0.45);
    textSize(displayHeight*0.03);
    text("Tap to play", displayWidth/2, displayHeight*0.55);
    text("Version : 3.4", displayWidth/2, displayHeight*0.8);
    text("By Dylan Neve", displayWidth/2, displayHeight*0.9);
    if (mousePressed == true) {
      menuActive = false;
      gameActive = true;
    }
  }

  private void game() {
    imageMode(CORNER);
    image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    text("Lives : " + p.lives, displayWidth/2, displayHeight*0.2);
    p.call();
    for (int i = 0; i < troid.length; i++) {
      troid[i].call();
    }
    for (int i = 0; i < life.length; i++) {
      life[i].call();
    }
  }

  private void dead() {
    p.x = displayWidth/2;
    background(255, 0, 0);
    textSize(displayHeight*0.06);
    fill(255);
    textAlign(CENTER);
    text("YOU DIED :P", displayWidth/2, displayHeight/2);
    textSize(displayHeight*0.03);
    text("Tap top to restart...", displayWidth/2, displayHeight*0.55);
    if (justDont == false && mousePressed == true && mouseY < displayHeight/2) {
      menuActive = true;
      gameActive = false;
      deadActive = false;
      justDont = true;
    }
  }

  private void mouseReleased() {
    justDont = false;
  }
}
