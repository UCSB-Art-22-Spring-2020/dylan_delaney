//Dylan delaney "assignment 6; intergalactic"
//completed 5/11/20



//initialize minim stuff
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
//FFT (fast fourier transform)
FFT fft; // ... get us info on the "parts" (frequencies) of our sound
//beat detector
BeatDetect beat;

float c;
//int x,y; //positon for x and y 

ArrayList<particle> plist = new ArrayList<particle>();

void setup() {
  size(500, 500);
  colorMode(HSB);

  minim = new Minim(this);
  song = minim.loadFile("Intergalactic.mp3", 1024);
  song.loop();

  // get info about song
  fft = new FFT( song.bufferSize(), song.sampleRate() );

  beat = new BeatDetect(); // set up beat detect
  beat.setSensitivity(300); // beat sensitivity of 300
}

void draw() {
  background(255);

  // use fft to "listen to our song and get info about the difference frequencies (~pitches (high/low/middle/etc))
  fft.forward( song.mix );


 //  loop through all frequencies in the fft and draw lines for each "band"
  for ( int i=0; i < fft.specSize(); i++) {
    stroke(random(0,360),250,250, 50); //stroke random hue with sat and brightness of 250 and an alpha channel of 50
    strokeWeight(10);
    line(i, height, i, height - fft.getBand(i)*8 ); // make line height and multiple by 8 to amplify results
  }
  
    for (particle p : plist) {  // for every particle in the plist, run its update() function
    p.display();
  }
    //listen to the song and detect beats
  beat.detect(song.mix);
  
  if (beat.isOnset()) { // if beat is detected then add a new particle 
    plist.add(new particle(width/2, height/2, 10, random(-2, 2), random(-2, 2))); // add a new particle that starts from the middle with a random speed
  }
}
