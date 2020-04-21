float xPos, yPos; //position variables for geometry
float xVel, yVel; //velocity variables for geometry
float xDirection, yDirection; // direction variables for geometry
float xGravity, yGravity; // acceleration variables
int h,s,b; // hue sat bright

void setup() {
  size(800, 600);
  init();
}


void draw() {
  render(); //run/call "render" function

  update(); // run/call "update" function

  boundaries(); //...

  interaction();//...
  // println(xDirection);
}
