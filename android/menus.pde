// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Menus
{

  boolean menuActive = true;
  boolean gameActive = false;
  boolean dead = false;

  void caller()
  {
    if (menuActive == true)
    {
      menu();
    }
    if (gameActive == true)
    {
      game();
    }
    if (dead == true)
    {
      dead();
    }
  }

  void menu()
  {
    background(0);
    textAlign(CENTER);
    fill(255);
    textSize(displayHeight*0.06);
    text("SPACE DODGE", displayWidth/2, displayHeight*0.45);
    textSize(displayHeight*0.03);
    text("Tap to play...", displayWidth/2, displayHeight*0.55);
    if (mousePressed == true)
    {
      menuActive = false;
      gameActive = true;
    }
  }

  void game()
  {
    background(0);
    textAlign(CENTER);
    fill(255);
    text("Lives : " + player.lives, displayWidth/2, displayHeight*0.2);
    player.caller();
    for (int i = 0; i < flares.length; i++) {
      flares[i].fall();
      flares[i].show();
    }
    for (int i = 0; i < troid.length; i++) {
      troid[i].fall();
      troid[i].show();
      troid[i].edgeDetect();
      troid[i].collide();
      troid[i].boop();
    }
  }

  void dead()
  {
    background(255, 0, 0);
    textSize(displayHeight*0.06);
    fill(0);
    textAlign(CENTER);
    text("YOU DIED :P", displayWidth/2, displayHeight/2);
    textSize(displayHeight*0.03);
    text("Tap to return to restart...", displayWidth/2, displayHeight*0.55);
    player.lives = 10;
    if (mousePressed == true)
    {
      menuActive = true;
      gameActive = false;
      dead = false;
    }
  }
}