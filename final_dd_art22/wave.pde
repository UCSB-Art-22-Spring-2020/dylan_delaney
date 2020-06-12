class wave {
  int x;
  int y;
  int speed = -1;
  int lifeSpan = 255; 
  int r,g,b ;
  

  wave(int x_, int y_) {
    x = x_;
    y = y_;
  }
  
  void display(){
    strokeWeight(4);
    stroke(r,g,b, lifeSpan);
    point(x,y);
    x = x + int(random(-3,-1));
    y = y + int(random(-2, 2));
    lifeSpan = lifeSpan - 1; // make the waves fade out after a while
  

    
    //if x is on the left third of screen make it transparent 
      if( x < width/3){
    lifeSpan = 0;

  }
    
  }
}
