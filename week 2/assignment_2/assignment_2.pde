int h, s, b;
int x, y;
void setup() {
  size(1000, 500);
  //h= 0;
  s=360;
  b=360;
  
  x = width/2;
  y = height/2;
  
  
}


void draw() {
  colorMode(HSB);

  for (int i=0; i < 100; i++);  { // start counting from 0 until i < 100 and keep it looping
    noStroke();
    fill(random(0, 360), s, b, 40); //fill with random hue
    triangle(random(0, width), random(0, height), random(0, width), random(0, height), random(0, width), random(0, height)); //make randomly shaped triangles
  }

  noStroke();
  fill(random(0,360), s, b,240);
  ellipse(x, y, 40,40);
  if (keyPressed) { //is key pressed?
    if (key == CODED) {// is it a special 'CODED KEY'?
      if (keyCode == RIGHT) { //is the coded key the right arrow?
        x+=10; //same as x =x +10
      }
      if (keyCode == LEFT) { //is the coded key the left arrow
        x-=10; // x=x-10
      }
    }
  }
  
  if (x>width) {// if x goes out of bounds on right 
    x =0; // reset to left
  }
  if (x<0) {// if x goes out of bounds on left 
    x =width; // reset to right
  }
   if (keyPressed) { //is key pressed?
    if (key == CODED) {// is it a special 'CODED KEY'?
      if (keyCode == UP) { //is the coded key the up arrow?
        y-=10; //same as y=y -10
      }
      if (keyCode == DOWN) { //is the coded key the down arrow
        y+=10; // y=y+10
  
      }
    }
   }
  if(y>height){ // is y greater than height
    y=0; //if so put circle at top
  }
  if(y<0){ //is y at the top?
    y=height;// put circle at bottom
  }
  
}
