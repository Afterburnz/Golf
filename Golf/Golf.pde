import fisica.*;

//palette
color white = #ffffff;
color black = #000000;
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);

//assets
PImage redBird;

FPoly platform1;
FPoly platform2;
FPoly platform3;
FCircle circle;
//fisica
FWorld world;

void setup() {
  //make window
  size(1600, 900);


  //initialise world
  makeWorld();
  makeCircle();
  //add terrain to world
  makePlatform1();
  makePlatform2();
  makePlatform3();
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
  platform1.vertex(500, 800);
  platform1.vertex(500, 700);
  platform1.vertex(0, 700);

  // define properties
  platform1.setStatic(true);
  platform1.setFillColor(green);
  platform1.setFriction(0.1);
  platform1.setGrabbable(false);
  //put it in the world
  world.add(platform1);
}

//===========================================================================================

void makePlatform2() {
  platform2 = new FPoly();

  //plot the vertices of this platform
  platform2.vertex(500, 800);
  platform2.vertex(500, 700);
  platform2.vertex(1300, 500);
  platform2.vertex(1300, 600);

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
  platform3.vertex(1300, 500);
  platform3.vertex(1300, 600);
  platform3.vertex(1600, 600);
  platform3.vertex(1600, 500);


  // define properties
  platform3.setStatic(true);
  platform3.setFillColor(green);
  platform3.setFriction(0);
  platform3.setGrabbable(false);

  //put it in the world
  world.add(platform3);
}


//===========================================================================================


void draw() {
  println("x: " + mouseX + " y: " + mouseY);
  background(blue);


  refreshCircle();

  world.step();  //get box2D to calculate all the forces and new positions
  world.draw();  //ask box2D to convert this world to processing screen coordinates and draw
}


//===========================================================================================

void makeCircle() {
  circle = new FCircle(25);
  circle.setPosition(200, 600);

  //set visuals
  circle.setStroke(0);
  circle.setStrokeWeight(1);
  circle.setFillColor(white);

  //set physical properties
  circle.setDensity(0.2);
  circle.setFriction(1);
  circle.setRestitution(0.67);


  //add to world
  world.add(circle);
}
//===========================================================================================
void makeBox(){
  
}
void refreshCircle() {
  if (circle.getX() >width || circle.getX() < 0) {
    circle.setPosition(200, 600);
    circle.setVelocity(0, 0);
    circle.setAngularVelocity(0);
  }
  if (circle.getY() <0) {
    circle.setPosition(200, 600);
    circle.setVelocity(0, 0);
    circle.setAngularVelocity(0);
  }
}
