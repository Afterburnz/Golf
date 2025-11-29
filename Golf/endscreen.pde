void endscreen() {
  background(blue);
  textAlign(CENTER);
  textSize(125);
  text("End", 962, 250);
  textSize(62.5);
  if ((p1Total < p2Total) && p2Total - p1Total != 1) {
    text("Player 1 wins by "+(p2Total - p1Total)+" strokes!", 962, 450);
  } else if ((p1Total < p2Total) && p2Total - p1Total == 1) {
    text("Player 1 wins by "+(p2Total - p1Total)+" stroke!", 962, 450);
  } else if ((p1Total > p2Total) && p1Total - p2Total !=1) {
    text("Player 2 wins by "+(p1Total - p2Total)+" strokes!", 962, 450);
  } else if ((p1Total > p2Total) && p1Total - p2Total == 1 ) {
    text("Player 2 wins by "+(p1Total - p2Total)+" stroke!", 962, 450);
  } else {
    text("Draw", 962, 450);
  }

  text("Press space to restart", 962, 600);
  if (spaceKey == true) {
    mode = 0;
  }
}
