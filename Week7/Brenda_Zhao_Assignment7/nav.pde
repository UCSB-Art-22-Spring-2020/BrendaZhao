void nav() {
  if (keyPressed) {
    if (key == CODED) {

      if (keyCode == UP) {
        rotX++; // increase x-axis rotation
      }
      if (keyCode == DOWN) {
        rotX--; // decrease x-axis rotation
      }

      if (keyCode == LEFT) {
        rotY++; // increase y-axis rotation
      }
      if (keyCode == RIGHT) {
        rotY--; // decrease y-axis rotation
      }
    }
    if (key == 'w') {
      camZ+=5; // increase navigation z position by 10
    }
    if (key == 's') {
      camZ-=5; // decrease navigation z position by 10
    }
  }
}
