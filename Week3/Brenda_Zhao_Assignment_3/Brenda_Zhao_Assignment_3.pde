PImage img;
float x0,y0,x1,y1,x2,y2,x3,y3;
float stepSizeX,stepSizeY;

void setup(){
  size(1124,844);
  x0 = x1 = width * 0.75;
  y0 = y1 = height * 0.752;
  
  x2 = x3 = width * 0.25;
  y2 = y3 = height * 0.25;
  stepSizeX = 20;
  stepSizeY = 20;
  
  frameRate(40);
  img = loadImage("bg.jpg");
  image(img,0,0);
}


void draw(){
 
   
 //point0
  strokeWeight(10);
  stroke(253,246,153,100);
  point(x0,y0);
  
  x0 = x0 + random(-stepSizeX, stepSizeX);
  y0 = y0 + random(-stepSizeY, stepSizeY);

  if(x0 > width || x0 < 0){
   x0 = random(0, width);
}

  if(y0 > height/3 || y0 < 0){
   y0 = random(0, height/3);
}

//ponit1

  strokeWeight(10);
  stroke(244,209,105,85);
  point(x1,y1);
  
  x1 = x1 + random(-stepSizeY, stepSizeY);
  y1 = y1 + random(-stepSizeX, stepSizeX);

  if(x1 > width || x1 < 0){
   x1 = random(0, width);
}

  if(y1 > height/3 || y1 < 0){
   y1 = random(0, height/3);
   
}

//ponit2

  strokeWeight(10);
  stroke(250,237,156,70);
  point(x2,y2);
  
  x2 = x2 + random(-stepSizeY, stepSizeY);
  y2 = y2 + random(-stepSizeX, stepSizeX);

  if(x2 > width || x2 < 0){
   x2 = random(0, width);
}

  if(y2 > height/3 || y1 < 0){
   y2 = random(0, height/3);
}

//ponit3

  strokeWeight(10);
  stroke(200,163,70,70);
  point(x3,y3);
  
  x3 = x3 + random(-stepSizeY, stepSizeY);
  y3 = y3 + random(-stepSizeX, stepSizeX);

  if(x3 > width || x3 < 0){
   x2 = random(0, width);
}

  if(y3 > height/3 || y3 < 0){
   y3 = random(0, height/3);

}

}
