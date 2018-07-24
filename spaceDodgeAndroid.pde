// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

import java.io.File;
import android.app.Activity;
import android.content.Context;
import android.os.Vibrator;
import android.os.Bundle;
import cassette.audiofiles.SoundFile;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.view.*;

SoundFile bang;
SoundFile powerUp;

Activity act;

handler h;
Menus menu;
Player player;
Troid[] troid = new Troid[10];
Life[] life = new Life[1];

PImage nebula;
PImage ship;
PImage asteriod;

int loadedHighScore;
int shownHighScore;

void setup() {
  //Init sound
  powerUp = new SoundFile(this, "media/power.mp3");
  bang = new SoundFile(this, "media/bang.mp3");

  //Init pictures
  nebula = loadImage("images/back.jpg");
  ship = loadImage("images/ship.jpg");
  asteriod = loadImage("images/asteroid.jpg");

  //Misc setup
  orientation(PORTRAIT);
  size(displayWidth, displayHeight, P2D);
  frameRate(120);

  //Other
  h = new handler();
  menu = new Menus();
  player = new Player();
  for (int i = 0; i < troid.length; i++) {
    troid[i] = new Troid();
  }
  for (int i = 0; i < life.length; i++) {
    life[i] = new Life();
  }
  act = this.getActivity();
}

void draw() {
  // Call different menus.
  menu.call();
}
