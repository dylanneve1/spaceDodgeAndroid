// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Menus
{

  boolean menuActive = true;
  boolean gameActive = false;
  boolean deadActive = false;

  void caller()
  {
    mouseReleased();
    if (menuActive == true)
    {
      menu();
    }
    if (gameActive == true)
    {
      game();
    }
    if (deadActive == true)
    {
      dead();
    }
  }

  void menu()
  {
    imageMode(CORNER);
    image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    textSize(displayHeight*0.06);
    text("Space Dodge", displayWidth/2, displayHeight*0.45);
    textSize(displayHeight*0.03);
    text("Play", displayWidth/2, displayHeight*0.55);
    text("Version : 3.0", displayWidth/2, displayHeight*0.8);
    if(mousePressed == true) {
      menuActive = false;
      gameActive = true;
    }
  }

  void game()
  {
    imageMode(CORNER);
    image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    text("Lives : " + player.lives, displayWidth/2, displayHeight*0.2);
    player.caller();
    for (int i = 0; i < flares.length; i++) {
      flares[i].fall();
      flares[i].show();
    }
    for (int i = 0; i < troid.length; i++) {
      troid[i].reset();
      troid[i].fall();
      troid[i].show();
      troid[i].edgeDetect();
      troid[i].collide();
      troid[i].boop();
      troid[i].respawn();
    }
    for (int i = 0; i < life.length; i++) {
      life[i].fall();
      life[i].show();
      life[i].respawn();
      life[i].edgeDetect();
      life[i].collision();
      life[i].getOneUp();
      life[i].reset();
    }
  }

  void dead()
  {
    player.x = displayWidth/2;
    background(255, 0, 0);
    textSize(displayHeight*0.06);
    fill(255);
    textAlign(CENTER);
    text("YOU DIED :P", displayWidth/2, displayHeight/2);
    textSize(displayHeight*0.03);
    text("Tap top to restart...", displayWidth/2, displayHeight*0.55);
    if (justDont == false && mousePressed == true && mouseY < displayHeight/2)
    {
      menuActive = true;
      gameActive = false;
      deadActive = false;
      justDont = true;
    }
  }

  void mouseReleased() {
    justDont = false;
  }
}
