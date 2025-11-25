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
int mode = 0;
int strokes = 0;
int bestScore = 0;

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
FCircle player1;
FCircle sand;
FBox player2;
boolean wKey, aKey, dKey, spaceKey;

//fisica
FWorld world;

void setup() {
  //make window
  size(2000, 900, P2D);


  //initialise world
  makeWorld();
  makeCircle();
  makeBox();

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
  platform1.setFriction(0);
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
  platform2.setFriction(0);
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
  platform3.setFriction(0);
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
  platform4.setFriction(0);
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
  platform5.setFriction(0);
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
  platform6.setFriction(0);
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
  platform7.setFriction(0);
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
  platform8.setFriction(0);
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
  platform9.setFriction(0);
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
  platform10.setFriction(0);
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
  platform11.setFriction(0);
  platform11.setGrabbable(false);

  //put it in the world
  world.add(platform11);
}


//===========================================================================================

void draw() {
  background(blue);
  if (mode==INTRO) {
    intro();
  } else {

    refreshCircle();
    refreshBox();
    refreshSand();
    finish();

    world.step();  //get box2D to calculate all the forces and new positions
    world.draw();  //ask box2D to convert this world to processing screen coordinates and draw
    if (player1.isTouchingBody(platform9)) {
      player1.setPosition(100, 600);
      player1.setVelocity(0, 0);
      player1.setAngularVelocity(0);
    }
    if (wKey) {
      player2.setVelocity(0, -200);
    }
    if (dKey) {
      player2.setVelocity(200, player2.getVelocityY());

      if (player2.isTouchingBody(platform1) || player2.isTouchingBody(platform2) || player2.isTouchingBody(platform3)|| player2.isTouchingBody(platform4)|| player2.isTouchingBody(platform5)|| player2.isTouchingBody(platform6)|| player2.isTouchingBody(platform7)|| player2.isTouchingBody(platform8)) {
        player2.setAngularVelocity(0);
        player2.setFriction(100);
      }
    }
    if (aKey) {
      player2.setVelocity(-200, player2.getVelocityY());
    }
    if (player2.isTouchingBody(platform1) || player2.isTouchingBody(platform2) || player2.isTouchingBody(platform3)|| player2.isTouchingBody(platform4)|| player2.isTouchingBody(platform5)|| player2.isTouchingBody(platform6)|| player2.isTouchingBody(platform7)|| player2.isTouchingBody(platform8)) {
      player2.setAngularVelocity(0);
      player2.setFriction(100);
    }
    if (wKey && dKey) {
      player2.setVelocity(282.8, -282.8);
    }
    if (wKey && aKey) {
      player2.setVelocity(-282.8, -282.8);
    }
    textSize(50);
    text("Strokes: " + strokes, 10, 50);
    text("Least strokes: " + bestScore, 10, 110);
  }
}


//===========================================================================================

void makeCircle() {
  player1 = new FCircle(25);
  player1.setPosition(100, 600);

  //set visuals
  player1.setStroke(0);
  player1.setStrokeWeight(1);
  player1.setFillColor(dBlue);

  //set physical properties
  player1.setDensity(0.2);
  player1.setFriction(1);
  player1.setRestitution(0.67);
  player1.setGrabbable(false);


  //add to world
  world.add(player1);
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

void makeBox() {
  player2 = new FBox(25, 25);
  player2.setPosition(1750, 500);

  //set visuals
  player2.setStroke(0);
  player2.setStrokeWeight(1);
  player2.setFillColor(red);

  //set physical properties
  player2.setDensity(1);
  player2.setFriction(100);
  player2.setRestitution(0.41);
  player2.setGrabbable(false);
  world.add(player2);
}

void refreshCircle() {
  if (player1.getX() >width || player1.getX() < 0) {
    player1.setPosition(100, 600);
    player1.setVelocity(0, 0);
    player1.setAngularVelocity(0);
  }
  if (player1.getY() <0) {
    player1.setPosition(100, 600);
    player1.setVelocity(0, 0);
    player1.setAngularVelocity(0);
  }
}
void refreshSand() {
  if (sand.getY() >300) {
    sand.setPosition(random(910, 1190), 250);
    sand.setVelocity(0, 0);
    sand.setAngularVelocity(0);
  }
}
void refreshBox() {
  if (player2.getX() >width+100 || player2.getX() < 0-100) {
    player2.setPosition(1750, 300);
    player2.setVelocity(0, 0);
    player2.setAngularVelocity(0);
    player2.setRotation(0);
  }
  if (player2.getY() <0-100) {
    player2.setPosition(1750, 300);
    player2.setVelocity(0, 0);
    player2.setAngularVelocity(0);
    player2.setRotation(0);
  }
}

void finish() {
  if (player1.isTouchingBody(platform11)) {
    player1.setPosition(100, 600);
    player1.setVelocity(0, 0);
    player1.setAngularVelocity(0);
    if (bestScore == 0) {
      bestScore = strokes;
    } else if (bestScore != 0 && strokes < bestScore) {
      bestScore = strokes;
    }
    strokes = 0;
  }
}

void mouseReleased() {
  player1.addForce(25*(mouseX-player1.getX()), 25*(mouseY-player1.getY()));
  strokes ++;
}
