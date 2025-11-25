void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 'd') dKey = true;
  if (key == 'a') aKey = true;
  if (key == ' ') spaceKey = true;
}
void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 'd') dKey = false;
  if (key == 'a') aKey = false;
  if (key == ' ') spaceKey = false;
}
