import fisica.*;

//palette
color white = #ffffff;
color black = #000000;
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);
color dBlue = #2E02F5;

final int INTRO = 0;
final int GAME = 1;
final int ENDSCREEN = 2;
int mode = 0;
int strokes = 0;
int p1BestScore = 0;
int p2BestScore = 0;
int startTimer = 0;

//assets
PImage redBird;

FPoly platform1;
FPoly platform2;
FPoly platform3;
FPoly platform4;
FPoly platform5;
FPoly platform6;
FPoly platform7;
FPoly platform8;
FPoly platform9;
FPoly platform10;
FPoly platform11;
FCircle player1Ball;
FBox player2Box;
FBox player1Box;
FCircle player2Ball;
FCircle sand;
boolean wKey, aKey, dKey, spaceKey;
boolean player1Turn = true;
int playCount = 0;

//fisica
FWorld world;

void setup() {
  //make window
  size(2000, 900, P2D);


  //initialise world
  makeWorld();
  makeCircle1();
  makeBox2();
  makeCircle2();
  makeBox1();

  int i =0;
  while (i<400) {
    makeSand();
    i++;
  }

  //add terrain to world
  makePlatform1();
  makePlatform2();
  makePlatform3();
  makePlatform4();
  makePlatform5();
  makePlatform6();
  makePlatform7();
  makePlatform8();
  makePlatform9();
  makePlatform10();
  makePlatform11();
}

//===========================================================================================

void makeWorld() {
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 900);
}

//===========================================================================================

void makePlatform1() {
  platform1 = new FPoly();

  //plot the vertices of this platform
  platform1.vertex(0, 800);
  platform1.vertex(200, 800);
  platform1.vertex(200, 700);
  platform1.vertex(0, 700);

  // define properties
  platform1.setStatic(true);
  platform1.setFillColor(green);
  platform1.setFriction(0.001);
  platform1.setGrabbable(false);
  //put it in the world
  world.add(platform1);
}

//===========================================================================================

void makePlatform2() {
  platform2 = new FPoly();

  //plot the vertices of this platform
  platform2.vertex(200, 800);
  platform2.vertex(200, 700);
  platform2.vertex(600, 500);
  platform2.vertex(600, 600);

  // define properties
  platform2.setStatic(true);
  platform2.setFillColor(green);
  platform2.setFriction(0.001);
  platform2.setGrabbable(false);

  //put it in the world
  world.add(platform2);
}


//===========================================================================================
void makePlatform3() {
  platform3 = new FPoly();

  //plot the vertices of this platform
  platform3.vertex(600, 500);
  platform3.vertex(600, 600);
  platform3.vertex(900, 300);
  platform3.vertex(900, 200);


  // define properties
  platform3.setStatic(true);
  platform3.setFillColor(green);
  platform3.setFriction(0.001);
  platform3.setGrabbable(false);

  //put it in the world
  world.add(platform3);
}


//===========================================================================================
void makePlatform4() {
  platform4 = new FPoly();

  //plot the vertices of this platform
  platform4.vertex(900, 300);
  platform4.vertex(900, 285);
  platform4.vertex(1200, 285);
  platform4.vertex(1200, 300);


  // define properties
  platform4.setStatic(true);
  platform4.setFillColor(green);
  platform4.setFriction(0.001);
  platform4.setGrabbable(false);

  //put it in the world
  world.add(platform4);
}


//===========================================================================================
void makePlatform5() {
  platform5 = new FPoly();

  //plot the vertices of this platform
  platform5.vertex(1200, 300);
  platform5.vertex(1200, 200);
  platform5.vertex(1400, 700);
  platform5.vertex(1400, 800);


  // define properties
  platform5.setStatic(true);
  platform5.setFillColor(green);
  platform5.setFriction(0.001);
  platform5.setGrabbable(false);

  //put it in the world
  world.add(platform5);
}


//===========================================================================================
void makePlatform6() {
  platform6 = new FPoly();

  //plot the vertices of this platform
  platform6.vertex(1400, 750);
  platform6.vertex(1400, 800);
  platform6.vertex(1600, 800);
  platform6.vertex(1600, 750);


  // define properties
  platform6.setStatic(true);
  platform6.setFillColor(green);
  platform6.setFriction(0.001);
  platform6.setGrabbable(false);

  //put it in the world
  world.add(platform6);
}


//===========================================================================================
void makePlatform7() {
  platform7 = new FPoly();

  //plot the vertices of this platform
  platform7.vertex(1275, 110);
  platform7.vertex(1275, 0);
  platform7.vertex(1250, 0);
  platform7.vertex(1250, 110);


  // define properties
  platform7.setStatic(true);
  platform7.setFillColor(black);
  platform7.setFriction(0.001);
  platform7.setGrabbable(false);

  //put it in the world
  world.add(platform7);
}


//===========================================================================================
void makePlatform8() {
  platform8 = new FPoly();

  //plot the vertices of this platform
  platform8.vertex(1600, 700);
  platform8.vertex(1712, 700);
  platform8.vertex(1712, 775);
  platform8.vertex(1812, 775);
  platform8.vertex(1812, 700);
  platform8.vertex(2000, 700);
  platform8.vertex(2000, 800);
  platform8.vertex(1600, 800);






  // define properties
  platform8.setStatic(true);
  platform8.setFillColor(green);
  platform8.setFriction(0.001);
  platform8.setGrabbable(false);

  //put it in the world
  world.add(platform8);
}


//===========================================================================================
void makePlatform9() {
  platform9 = new FPoly();

  //plot the vertices of this platform
  platform9.vertex(1400, 725);
  platform9.vertex(1400, 750);
  platform9.vertex(1600, 750);
  platform9.vertex(1600, 725);


  // define properties
  platform9.setStatic(true);
  platform9.setFillColor(dBlue);
  platform9.setFriction(0.001);
  platform9.setGrabbable(false);

  //put it in the world
  world.add(platform9);
}


//===========================================================================================
void makePlatform10() {
  platform10 = new FPoly();

  //plot the vertices of this platform

  platform10.vertex(1712, 700);
  platform10.vertex(1727, 700);
  platform10.vertex(1727, 760);
  platform10.vertex(1797, 760);
  platform10.vertex(1797, 700);
  platform10.vertex(1812, 700);
  platform10.vertex(1812, 775);
  platform10.vertex(1712, 775);








  // define properties
  platform10.setStatic(true);
  platform10.setFillColor(white);
  platform10.setFriction(0.001);
  platform10.setGrabbable(false);

  //put it in the world
  world.add(platform10);
}


//===========================================================================================
void makePlatform11() {
  platform11 = new FPoly();

  //plot the vertices of this platform


  platform11.vertex(1727, 750);
  platform11.vertex(1727, 760);
  platform11.vertex(1797, 760);
  platform11.vertex(1797, 750);









  // define properties
  platform11.setStatic(true);
  platform11.setFillColor(yellow);
  platform11.setFriction(0.001);
  platform11.setGrabbable(false);

  //put it in the world
  world.add(platform11);
}


//===========================================================================================

void draw() {
  background(blue);
  if (mode==INTRO) {
    intro();
  } else if (mode == ENDSCREEN) {
    endscreen();
  } else {


    refreshCircle1();
    refreshCircle2();
    refreshBox1();
    refreshBox2();
    finish1();
    finish2();
    startTimer++;
    world.step();  //get box2D to calculate all the forces and new positions
    world.draw();  //ask box2D to convert this world to processing screen coordinates and draw
    if (player1Turn == true) {
      if (player1Ball.isTouchingBody(platform9)) {
        player1Ball.setPosition(100, 600);
        player1Ball.setVelocity(0, 0);
        player1Ball.setAngularVelocity(0);
      }
      if (startTimer > 90) {
        if (wKey) {
          player2Box.setVelocity(0, -200);
        }
        if (dKey) {
          player2Box.setVelocity(200, player2Box.getVelocityY());
        }
        if (aKey) {
          player2Box.setVelocity(-200, player2Box.getVelocityY());
        }

        if (wKey && dKey) {
          player2Box.setVelocity(282.8, -282.8);
        }
        if (wKey && aKey) {
          player2Box.setVelocity(-282.8, -282.8);
        }
      }
    }
    if (player1Turn == false) {
      if (player2Ball.isTouchingBody(platform9)) {
        player2Ball.setPosition(100, 600);
        player2Ball.setVelocity(0, 0);
        player2Ball.setAngularVelocity(0);
      }
      if (startTimer > 90) {
        if (wKey) {
          player1Box.setVelocity(0, -200);
        }
        if (dKey) {
          player1Box.setVelocity(200, player1Box.getVelocityY());
        }
        if (aKey) {
          player1Box.setVelocity(-200, player1Box.getVelocityY());
        }

        if (wKey && dKey) {
          player1Box.setVelocity(282.8, -282.8);
        }
        if (wKey && aKey) {
          player1Box.setVelocity(-282.8, -282.8);
        }
      }
    }
    textSize(40);
    textAlign(LEFT);
    text("Strokes: " + strokes, 10, 50);
    text("Player 1 least strokes: " + p1BestScore, 10, 110);
    text("Player 2 least strokes: " + p2BestScore, 10, 170);
  }
}


//===========================================================================================

void makeCircle1() {
  player1Ball = new FCircle(25);
  player1Ball.setPosition(100, 600);

  //set visuals
  player1Ball.setStroke(0);
  player1Ball.setStrokeWeight(1);
  player1Ball.setFillColor(dBlue);

  //set physical properties
  player1Ball.setDensity(0.2);
  player1Ball.setFriction(0);
  player1Ball.setRestitution(0.67);
  player1Ball.setGrabbable(false);



  //add to world
  world.add(player1Ball);
}
//===========================================================================================
void makeCircle2() {
  player2Ball = new FCircle(25);
  player2Ball.setPosition(2100, 600);

  //set visuals
  player2Ball.setStroke(0);
  player2Ball.setStrokeWeight(1);
  player2Ball.setFillColor(red);

  //set physical properties
  player2Ball.setDensity(0.2);
  player2Ball.setFriction(0);
  player2Ball.setRestitution(0.67);
  player2Ball.setGrabbable(false);


  //add to world
  world.add(player2Ball);
}
//===========================================================================================
void makeSand() {
  sand = new FCircle(5);
  sand.setPosition(random(910, 1190), 250);

  //set visuals
  sand.setStroke(0);
  sand.setStrokeWeight(1);
  sand.setFillColor(yellow);

  //set physical properties
  sand.setDensity(0.2);
  sand.setFriction(1);
  sand.setRestitution(0.67);
  sand.setGrabbable(false);


  //add to world
  world.add(sand);
}
//===========================================================================================
void makeBox1() {
  player1Box = new FBox(25, 25);
  player1Box.setPosition(2550, 500);

  //set visuals
  player1Box.setStroke(0);
  player1Box.setStrokeWeight(1);
  player1Box.setFillColor(dBlue);

  //set physical properties
  player1Box.setDensity(1);
  player1Box.setFriction(100);
  player1Box.setRestitution(0.41);
  player1Box.setGrabbable(false);


  world.add(player1Box);
}
void makeBox2() {
  player2Box = new FBox(25, 25);
  player2Box.setPosition(1750, 500);

  //set visuals
  player2Box.setStroke(0);
  player2Box.setStrokeWeight(1);
  player2Box.setFillColor(red);

  //set physical properties
  player2Box.setDensity(1);
  player2Box.setFriction(100);
  player2Box.setRestitution(0.41);
  player2Box.setGrabbable(false);


  world.add(player2Box);
}

void refreshCircle1() {
  if (player1Turn == true) {
    if (player1Ball.getX() >width || player1Ball.getX() < 0) {
      player1Ball.setPosition(100, 600);
      player1Ball.setVelocity(0, 0);
      player1Ball.setAngularVelocity(0);
    }
    if (player1Ball.getY() <0) {
      player1Ball.setPosition(100, 600);
      player1Ball.setVelocity(0, 0);
      player1Ball.setAngularVelocity(0);
    }
  }
  if (player1Turn == true) {
    player1Ball.setStatic(false);
  } else  if (player1Turn == false) {
    player1Ball.setStatic(true);
  }
}
void refreshCircle2() {
  if (player1Turn == false) {
    if (player2Ball.getX() >width || player2Ball.getX() < 0) {
      player2Ball.setPosition(100, 600);
      player2Ball.setVelocity(0, 0);
      player2Ball.setAngularVelocity(0);
    }
    if (player2Ball.getY() <0) {
      player2Ball.setPosition(100, 600);
      player2Ball.setVelocity(0, 0);
      player2Ball.setAngularVelocity(0);
    }
  }
  if (player1Turn == false) {
    player2Ball.setStatic(false);
  } else if (player1Turn == true) {
    player2Ball.setStatic(true);
  }
}

void refreshBox1() {
  if (player1Turn == false) {
    if (player1Box.getX() >width+100 || player1Box.getX() < 0-100) {
      player1Box.setPosition(1750, 500);
      player1Box.setVelocity(0, 0);
      player1Box.setAngularVelocity(0);
      player1Box.setRotation(0);
    }
    if (player1Box.getY() <0-100) {
      player1Box.setPosition(1750, 500);
      player1Box.setVelocity(0, 0);
      player1Box.setAngularVelocity(0);
      player1Box.setRotation(0);
    }
  }
  if (player1Turn == true) {
    player1Box.setStatic(true);
  } else if (player1Turn == false) {
    player1Box.setStatic(false);
  }
}
void refreshBox2() {
  if (player1Turn == true) {
    if (player2Box.getX() >width+100 || player2Box.getX() < 0-100) {
      player2Box.setPosition(1750, 500);
      player2Box.setVelocity(0, 0);
      player2Box.setAngularVelocity(0);
      player2Box.setRotation(0);
    }
    if (player2Box.getY() <0-100) {
      player2Box.setPosition(1750, 500);
      player2Box.setVelocity(0, 0);
      player2Box.setAngularVelocity(0);
      player2Box.setRotation(0);
    }
  }
  if (player1Turn == true) {
    player2Box.setStatic(false);
  } else if (player1Turn == false) {
    player2Box.setStatic(true);
  }
}

void finish1() {

  if (player1Ball.isTouchingBody(platform11)) {
    player1Ball.setPosition(2100, 600);
    player2Box.setPosition(3000, 100);
    player1Ball.setVelocity(0, 0);
    player1Ball.setAngularVelocity(0);
    if (p1BestScore == 0) {
      p1BestScore = strokes;
    } else if (p1BestScore != 0 && strokes < p1BestScore) {
      p1BestScore = strokes;
    }
    player1Turn = false;
    startTimer = 0;

    strokes = 0;
  }
}
void finish2() {

  if (player2Ball.isTouchingBody(platform11)) {
    player2Ball.setPosition(2100, 600);
    player1Box.setPosition(3000, 100);
    player2Ball.setVelocity(0, 0);
    player2Ball.setAngularVelocity(0);
    if (p2BestScore == 0) {
      p2BestScore = strokes;
    } else if (p2BestScore != 0 && strokes < p2BestScore) {
      p2BestScore = strokes;
    }
    player1Turn = true;
    startTimer = 0;


    strokes = 0;
    playCount++;
  }

  if (playCount ==3) {
    mode = 2;
  }
}

void mouseReleased() {
  if (startTimer >90) {
    player1Ball.addForce(25*(mouseX-player1Ball.getX()), 25*(mouseY-player1Ball.getY()));
    player2Ball.addForce(25*(mouseX-player2Ball.getX()), 25*(mouseY-player2Ball.getY()));
    strokes ++;
  }
}
