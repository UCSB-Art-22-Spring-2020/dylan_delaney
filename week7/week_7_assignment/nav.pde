void nav() {
  if (keyPressed) {
    if (key == CODED) {

      if (keyCode == UP) {
        rotX++; //increases x axis rotation
      }
      if (keyCode == DOWN) {
        rotX--; //decrease x axis
      }
      if (keyCode == LEFT) {
        rotY++; //increase y axis rotation
      }
      if (keyCode == RIGHT) {
        rotY--; // decrease y-axis rotation
      }
    }
      if (key =='w') {
        camZ+=10; //increase navigation z position by 10
      }
      if (key == 's') {
        camZ-=10;// decrease nav z position by 10
      }
    
  }
}
