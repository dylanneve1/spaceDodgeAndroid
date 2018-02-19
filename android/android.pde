// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

Menus menu;
Player player;
Troid[] troid = new Troid[1000];
Flares[] flares = new Flares[100];

void setup()
{
  menu = new Menus();
  frameRate(60);
  player = new Player();
  for (int i = 0; i < troid.length; i++) {
    troid[i] = new Troid();
  }
  for (int i = 0; i < flares.length; i++) {
    flares[i] = new Flares();
  }
  size(displayWidth, displayHeight);
  orientation(PORTRAIT);
}

void draw()
{
  menu.caller();
}