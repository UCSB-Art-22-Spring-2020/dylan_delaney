void interaction() {

  if (keyPressed) { //have we pressed a key
    if (key=='r') { // is that key r
      fill(360, 200, 200);
    }
    if (key=='y') { // is that key y
      fill(45, 100, 300);
    }
  }
  if (key=='p') { // is that key p
    fill(170, 100, 300);
  }
  if (keyPressed) { //have we pressed a key
    if (key==' ') { // is that key r
    yGravity = random(-1,-5);
    }
  }
}
