// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

Menus menu;
Player player;
Troid[] troid = new Troid[1000];
Flares[] flares = new Flares[50];

void setup()
{
  orientation(PORTRAIT);
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
}

void draw()
{
  menu.caller();
}