//Dylan Delaney Assignment 3 4/20/20
// "digital random confetti for those whose birthdays in quarantine"
//press space to add white confetti
//enjoy and enter the void!!

float x, y; //position of coordinates
float noisePosX, noisePosY; // pos of noise value.


void setup() {
  size(800, 600); //make a box 
  x=random(0, width); //x is a random number between 0 and width
  y=random(0, height); //y is a random number between 0 and height

  //frameRate(2);

  noisePosX = 0; // set noise position of x to 0
  noisePosY = 100;// set noise position of y to 100


  background(240, 170, 150); //make background pink
}




void draw() {
  colorMode(HSB); // color mode hue sat brightness
  noStroke(); //no stroke
  square(x, y, random(10, 50)); // put a square of a random size between 10,50 at x and y
  fill(random(0, 360), random(100, 150), random(100, 360), 150); //fill circle with a random color between my set variables of hsb
  if (keyPressed) { // is key pressed?
fill(10,0,360, 150); //if so fill circle with white
  
  
 
}

float m =noise(noisePosX); //make a variable for the noise position of x
float n =noise(noisePosY);//make a variable for the noise position of x


x=map(m, 0, 1, 0, width); //make a map of all the numbers for x, between 0 and width
y=map(n, 0, 1, 0, height);// make a map of all the numbers for y, between 0 and width



noisePosX += 7;//add 7 to noise position of x every frame
noisePosY += 7; //add 7 to noise position of y every frame

}
