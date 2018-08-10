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
Menus m;
Player p;
Troid[] troid = new Troid[10];
Life[] life = new Life[1];

PImage nebula;
PImage ship;
PImage asteriod;

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
  fullScreen();
  frameRate(120);

  //Other
  h = new handler();
  m = new Menus();
  p = new Player();
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
  m.call();
}

void mouseReleased() {
  p.mounted = false;
}
