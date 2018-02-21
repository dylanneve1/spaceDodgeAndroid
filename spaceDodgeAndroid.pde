// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

Menus menu;
Player player;
Troid[] troid = new Troid[10];
Flares[] flares = new Flares[50];
Life[] life = new Life[1];

PImage nebula;
PImage ship;
PImage asteriod;

PFont font;

void setup()
{
  nebula = loadImage("nebula.jpg");
  ship = loadImage("ship.jpg");
  asteriod = loadImage("asteroid.jpg");
  orientation(PORTRAIT);
  menu = new Menus();
  frameRate(120);
  player = new Player();
  for (int i = 0; i < troid.length; i++) {
    troid[i] = new Troid();
  }
  for (int i = 0; i < flares.length; i++) {
    flares[i] = new Flares();
  }
  size(displayWidth, displayHeight, P2D);
}

void draw()
{
  menu.caller();
}