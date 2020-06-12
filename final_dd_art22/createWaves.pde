void createWaves(){
for (int x=0; x<width; x++) { // nested loop to scan through all pixel locations
    for ( int y = 0; y< height; y++) { // make sure that "height" is used for "y"
      int index =  x + y *width; // magic

      //extracted color values from image
      float r = red(surf.pixels[index]);
      float g = green(surf.pixels[index]);
      float b = blue(surf.pixels[index]);

      
      // here is where i'm checking to see if a pixel is more or less white (i.e. all the color channels are above 225 and is on the right two thirds of the image
      // if that's the case, then i create a new "wave" particle at this location ...in the "wave" particle class, I have it so that its moving to the left "x = x + speed" and speed = -1
      if (r > 225 && g > 225 && b > 225 && x > width/3) {
        wlist.add(new wave(x, y));  
        //println("new wave at: ", x, y);
      }
      
      
      
    }
  }
  
  
  
  
}
