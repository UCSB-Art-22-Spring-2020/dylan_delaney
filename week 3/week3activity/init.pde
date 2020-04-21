void init() {
  xPos=width/2;
  yPos=height/2;

  xVel = 5; // velocity of xPos
  yVel = -5; // velocity of y
  xDirection = 1; //initial x direction
  yDirection = 1; //initial y direction
  //xGravity = 0.5; //initial x acceleration
  yGravity = 1; // initial y acceleration
  colorMode(HSB);
  background(240,100,240);
}
