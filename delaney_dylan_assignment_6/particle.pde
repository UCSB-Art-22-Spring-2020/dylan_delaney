class particle{
  
  // variables
  float x,y;
  float size;
  float speedX, speedY;
  int lifeSpan = 255;
  
  //constructor
  particle( float x_, float y_, float size_, float speedX_, float speedY_){
    x=x_;
    y=y_;
    size=size_;
    speedX=speedX_;
    speedY=speedY_;
    
  }
  
  // methods
  void display(){
    strokeWeight( size );
    stroke(100,360,250,lifeSpan); // green stroke with lifeSpan as the alpha channel
    point(x,y);
    lifeSpan-= .1; // decrease lifespan by .1
  x  = x + speedX;
  y = y + speedY;
  
  //check for boundaries and reverse direction if at edge
 if( x  >= width || x <= 0){
  speedX = speedX * -1; 
 }
  if( y  >= height || y <= 0){
  speedY = speedY * -1; 
 }
  
  
  
  }
}
