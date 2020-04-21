float xPos, yPos; // position variables for geometry
float xVel, yVel; // velocity variables for geometry
float xDirection, yDirection; // direction variables for geometry
float xGravity,yGravity;//acceleration

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;

  xVel = 2; // velocity of xPos
  yVel = 2; // velocity of yPos
  xDirection = 1; // initial x direction
  yDirection = 1; // initial y direction
  xGravity = 1;
  yGravity = 2;
  background(207, 211, 234);
}


void draw() {
  
  strokeWeight(7);
  stroke(117,149,203,80);
  ellipse(xPos, yPos, 10, 10);
 
  
  
  xVel = xVel * xDirection;//make sure yVel is correct
  xPos+=xVel;
  xVel+=xGravity;
 
  yVel = yVel * yDirection;//make sure yVel is correct
  yPos+=yVel;
  yVel+=yGravity;
  
   if ( xPos > width || xPos < 0 ) { // check if we are at the edge of our screen
    xDirection = xDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }

  if ( yPos > height || yPos < 0 ) { // check if we are at the edge of our screen
    yDirection = yDirection * -1; // change direction to the other sign (+ to - , or - to + )
  }
  
  
  
  if (keyPressed) { // have we pressed a key?
    if (key == 'x') { // is that key x?
      xVel = random(1, 10); // if so, set x velocity to random number between 1-9
      println("xVel = :",xVel);
    }
    if (key == 'y') { // is that key y?
      yVel = random(1, 10); // if so, set y velocity to random number between 1-9
      println("yVel = :",yVel);
    }
  }

  //println(xDirection);
}
