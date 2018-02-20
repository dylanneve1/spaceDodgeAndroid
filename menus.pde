// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

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
    //image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    textSize(30);
    text("SPACE DODGE", 250, 225);
    textSize(15);
    text("Tap to play...", 250, 275);
    if (mousePressed == true)
    {
      menuActive = false;
      gameActive = true;
    }
  }

  void game()
  {
    //image(nebula, 0, 0, displayWidth, displayHeight);
    textAlign(CENTER);
    fill(255);
    text("Lives : " + player.lives, 250, 100);
    text("Score : " + player.score, 250, 125);
    text("High score : " + player.highScore, 250, 150);
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
    textSize(30);
    fill(0);
    textAlign(CENTER);
    text("YOU DIED :P", 250, 250);
    textSize(15);
    text("Tap to return to restart...", 250, 275);
    player.lives = 10;
    if (mousePressed == true)
    {
      menuActive = true;
      gameActive = false;
      dead = false;
    }
  }
}