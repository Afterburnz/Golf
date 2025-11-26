void intro() {
  background(black);
  textAlign(CENTER);
  textSize(125);
  text("Cooked Golf", 962,450);
  textSize(62.5);
  text("Press space to start", 962,600);
  if(spaceKey == true){
    mode = 1;
  }
}
