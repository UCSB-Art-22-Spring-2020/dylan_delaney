import peasy.*;

PeasyCam cam; //initialize pcamera


// create an arraylisst to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();

int boundary = 200;
int total = 100; //total number of particles that we want 

float rotX, rotY, rotZ, camX, camY, camZ; //rotation and translation of our navigation

void setup() {
      colorMode(HSB);
  size(600, 600, P3D);
  
  cam = new PeasyCam(this,600);

  // we want to add "total" number of particles to our plist
  for (int i=0; i < total; i++) {
    plist.add(new particle(
      random(-boundary, boundary), //initial x location
      random(-boundary, boundary), //..y
      random(-boundary, boundary), //..z
      10,  //size
      random(-2, 2), //x speed
      random(-2, 2), // y speed
      random(-2, 2) ) ); // z speed
  }
}

void draw() {
    
  background(140, 250, 180);

scene(); // run the scene() function to draw our 3d scene
nav();

  for (particle p : plist) {  // for every particle in the plist, run its update() function
    p.display();
  }
}
