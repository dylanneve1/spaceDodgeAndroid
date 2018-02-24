// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

import android.app.Activity;
import android.content.Context;
import android.os.Vibrator;

Activity act;

Menus menu;
Player player;
Troid[] troid = new Troid[10];
Flares[] flares = new Flares[50];
//Life[] life = new Life[1];

PImage nebula;
PImage ship;
PImage asteriod;
 
int loadedHighScore;
int shownHighScore;

String[] lines;

PFont font;

void setup()
{
  lines = loadStrings("score.txt");
  shownHighScore = int(lines[0]);
  nebula = loadImage("back.jpg");
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
  //for (int i = 0; i < life.length; i++) {
  //  life[i] = new Life();
  //}
  size(displayWidth, displayHeight, P2D);
  act = this.getActivity();
}

void draw()
{
  loadedHighScore = int(lines[0]);
  menu.caller();
}