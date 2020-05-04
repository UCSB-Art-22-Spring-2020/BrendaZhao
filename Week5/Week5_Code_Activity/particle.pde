class particle{//make a class
 
  // necessary variables
  float x,y;
  float size;
  float speedX, speedY;
  
  // constructor set the instance of particle
  particle( float x_ , float y_, float size_, float speedX_, float speedY_ ) {
    x= x_;
    y= y_;
    size = size_;
    speedX = speedX_;
    speedY = speedY_;
    
  }
  
  // methods
  void display(){
   strokeWeight( size );//outline
   stroke(57,137,228,70);//color transfer
   point(x,y);//position
   x = x + speedX;
   y = y + speedY;    
  }
  
}
