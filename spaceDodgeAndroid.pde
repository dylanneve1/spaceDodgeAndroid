// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

import java.io.File;
import android.app.Activity;
import android.content.Context;
import android.os.Vibrator;
import cassette.audiofiles.SoundFile;

SoundFile bang;
SoundFile powerUp;

PrintWriter output;
Activity act;

Menus menu;
Player player;
Troid[] troid = new Troid[10];
Flares[] flares = new Flares[30];
Life[] life = new Life[1];

boolean scoreFileExists = false;

PImage nebula;
PImage ship;
PImage asteriod;

int loadedHighScore;
int shownHighScore;

String[] lines;

String data = dataPath("");

PFont font;

File monFichier;

void setup()
{
  powerUp = new SoundFile(this, "power.mp3");
  bang = new SoundFile(this, "bang.mp3");
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
  for (int i = 0; i < life.length; i++) {
    life[i] = new Life();
  }
  size(displayWidth, displayHeight, P2D);
  act = this.getActivity();
}

void draw()
{
  menu.caller();
}
