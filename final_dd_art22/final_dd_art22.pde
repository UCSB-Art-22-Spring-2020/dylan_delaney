// Dylan Delaney final
// "Ventura Sun/set/night/dawn" completed on 6/12/20
// Press B to change scenery


//start minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

int mode = 0; //which scene mode are we in



//make an image called surf
PImage surf;
ArrayList<wave> wlist = new ArrayList<wave>(); //new array

void setup() {
  size(870, 584);
  surf = loadImage("surf.jpg"); //load surf
  surf.loadPixels(); //load surf pixels
  image(surf, 0, 0);



  //loop and play the song
  minim = new Minim(this);
  song = minim.loadFile("pipeline.mp3", 1024);
  song.loop();


//run create waves function
  createWaves();
}

void draw() {
  //display surf image at start of draw loop
  image(surf, 0, 0);

// base mode 
  if (mode == 0) {
    tint(255, 255, 255 );
    for (wave w : wlist) {
      w.r = 255;
      w.g = 255;
      w.b = 255;
    }
  } 
  //sunset mode 
    if (mode == 1) {
    tint(230, 150, 210,20); 
    for (wave w : wlist) {
      w.r = 252;
      w.g = 190;
      w.b = 69;
    }
  }
  
  //biolum mode 
  if (mode == 2) {
    tint(35, 112, 213,80); 
    for (wave w : wlist) {
      w.r = 64;
      w.g = 208;
      w.b = 214;
    }
  }
  //dawn mode 
    if (mode == 3) {
    tint(255, 157, 58,50); 
    for (wave w : wlist) {
      w.r = 244;
      w.g = 242;
      w.b = 200;
    }
  }




// if 200 frames have past then create a wave 
  if ( frameCount % 200 == 0 ) {
    createWaves();
  }

  // here is where i run the display function for all the wave particles that were created at the locations of white-ish pixels
  for (wave w : wlist) {
    w.display();
  }
}
// if key 'b' released then add to mode 
void keyReleased() {
  if (key == 'b') {
    mode++;
    if (mode > 3) {//if mode is above 3 then reset
      mode = 0;
    }
    println("mode is: ", mode);
  }
}
