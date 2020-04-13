//Brenda Zhao
//Art 22 
//2020-4-12
//assignmnet 2

int x,y;//variable for position
int h,s,b;//varibale for color

void setup(){
  size(800,800);//window size
  x = width/2;
  y = height/2;
    //make it start from the middle of the window 
}


void draw(){
  background(255);//white backgorund
  colorMode(HSB); // use hue sat bright color mode

  h = 200; // hue
  s = 360; // saturation
  b = 360; // brightness

  for (int i = 0; i < 1000; i++) { // for 0 tp 999.999999
  noStroke(); // no outline
  fill(random (0,85), random (85, 170), random (170,255), 80 );//make the rectangles have random colors
  rect(random (0, width), random (0, height), 30, 30); //set the random position for rects
}

  strokeWeight(4);//4 pixel thick stroke
  stroke(255,215,213,70);//stroke's color
  fill(random (85,0), random (170,85), random (255,170), 90);//fill the ellipse
  ellipse(x, y, 30, 30);//make the ellipse start in th middle and get a size in 30
  
  if (keyPressed) { // is a key pressed?
    if (key == CODED) { // is it a special "CODED" key?
      if (keyCode == RIGHT) { // is the coded key the right arrow?
        x+=10;   // same as saying x = x + 10;
      }
      if (keyCode == LEFT) { // is the coded key the left arrow?
        x-=10;   // same as saying x = x - 10;
      }
      if (keyCode == UP) { // is the coded key the up arrow?
        y-=10;   // same as saying x = x - 10;
      }
      if (keyCode == DOWN) { // is the coded key the down arrow?
        y+=10;   // same as saying x = x - 10;
      }
    }
  }

  if (x > width) { // if x goes out of bounds on the right
    x = 0; // reset to the left
  }
  if (x < 0) { // if x goes out of bounds on the left
    x = width; // reset to the right
  }
  if (y > height) { // if x goes out of bounds on the bottom
    y = 0; // reset to the top
  }
  if (y < 0) { // if x goes out of bounds on the top
    y = height; // reset to the bottom
  }
}
