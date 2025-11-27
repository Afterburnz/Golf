void endscreen() {
  background(black);
  textAlign(CENTER);
  textSize(125);
  text("End", 962, 250);
  textSize(62.5);
  if (p1BestScore < p2BestScore) {
    text("Player 1 wins by "+(p2BestScore - p1BestScore)+" strokes!", 962, 450);
  } else if (p1BestScore > p2BestScore) {
    text("Player 2 wins by "+(p1BestScore - p2BestScore)+" strokes!", 962, 450);
  } else {
    text("Draw", 962, 450);
  }

  text("Press space to restart", 962, 600);
  if (spaceKey == true) {
    mode = 0;
  }


}
