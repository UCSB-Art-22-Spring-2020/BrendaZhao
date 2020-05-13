//Brenda Zhao
//art22 midterm1

float x0,y0,x1,y1,x2,y2,x3,y3;//set the varibles
float stepSizeX,stepSizeY;//variables to set every step of the movement

void setup(){
  size(600,600);//window size
  x0 = width/2;//start from the middle of the window
  y0 = height/2;
  
  stepSizeX = 20;//every movement move 20 pixels
  stepSizeY = 20;
  
}


void draw(){
  //A //the first dot
  strokeWeight(15);//size
  stroke(63,98,105,100);//color and transfer
  point(x0,y0);//start from position (x0,y0)
  
  x0 = x0 + random(-stepSizeX, stepSizeX);//when the point move,the new x0 equal to x0 + random(-stepSizeX, stepSizeX)
  y0 = y0 + random(-stepSizeY, stepSizeY);//when the point move,the new y0 equal to x0 + random(-stepSizeY, stepSizeY)

  if(x0 > width/2 || x0 < 0){//to make sure the points in the area of top left of the window
   x0 = random(0, width/2);
}

  if(y0 < 0 || y0 > height/2){
   y0 = random(0, height/2);
}

//B  second point
  strokeWeight(15);//size
  stroke(46,47,70,75); //color and transfer
  point(x1,y1);//start from position (x0,y0)
  
  x1 = x1 + random(-stepSizeY, stepSizeY);//when the point move,the new x1 equal to x1 + random(-stepSizeY, stepSizeY)
  y1 = y1 + random(-stepSizeX, stepSizeX);//when the point move,the new y1 equal to x1 + random(-stepSizeX, stepSizeX)

  if(x1 > width || x1 < width/2){//to make sure the points in the area of bottom right of the window
   x1 = random(width/2,width);
}

  if(y1 > height || y1 < height/2){
   y1 = random(height/2,height);
   
}

//C
  strokeWeight(15);//size
  stroke(128,123,132,85);//color and transfer
  point(x2,y2);//start from position (x0,y0)
  
  x2 = x2 + random(-stepSizeY, stepSizeY);//when the point move,the new x2 equal to x2 + random(-stepSizeY, stepSizeY)
  y2 = y2 + random(-stepSizeX, stepSizeX);//when the point move,the new y2 equal to x2 + random(-stepSizeX, stepSizeX)

  if(x2 > width || x2 < width/2){//to make sure the points in the area of top right of the window
   x2 = random(width/2,width);
}

  if(y2 > height/2 || y2 < 0){
   y2 = random(0, height/2);
   
}

//D
  strokeWeight(15);//size
  stroke(171,191,191,97);//color and transfer
  point(x3,y3);//start from position (x0,y0)
  
  x3 = x3 + random(-stepSizeY, stepSizeY);//when the point move,the new x3 equal to x3 + random(-stepSizeY, stepSizeY)
  y3 = y3 + random(-stepSizeX, stepSizeX);//when the point move,the new y3 equal to x3 + random(-stepSizeX, stepSizeX)

  if(x3 > width/2 || x3 < 0){//to make sure the points in the area of bottom left of the window
   x3 = random(0, width/2);
}

  if(y3 > height || y3 < height/2){
   y3 = random(height/2,height);
   
}
  

}
