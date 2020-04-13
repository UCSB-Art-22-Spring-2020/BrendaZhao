//Brenda Zhao
//Art 22 
//2020-4-6
//Assignment 1

void setup() {
  size(600, 600);//size of the window
}

void draw() {

  noStroke();//no outline
  fill(127,150,124,50);//outer color
  
  ellipse(mouseX, mouseY,30,30);//let the inter ellipse move with mouse, 30,30 limit the zise 
  fill(64,83,60,70);//inter color

  float rad=(mouseX+mouseY)/50;// set the changeing size
  ellipse(mouseX, mouseY, rad, rad);//let the outer ellipse move with mouse, rad,rad means the changing size
  
}
