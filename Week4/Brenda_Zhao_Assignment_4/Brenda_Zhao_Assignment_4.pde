//Brenda Zhao
//Art 22  
//Assignment 4


PImage img;

void setup(){
 size(700,700); 
 img = loadImage("001.jpg");//load the background image
 
 loadPixels();
 for (int x=0; x < width; x++){ // nested loop to scan through all pixel locations
   for (int y=0; y < width; y++){
     int index = x + y * width; //get every section 
     
     // extracted color values from image"001.jpg"
     float r = red(img.pixels[index]);
     float g = green(img.pixels[index]);    
     float b = blue(img.pixels[index]);
     
     // set pixel color for display
     pixels[index] = color(r,g,b);
     
   }
 }
     
 updatePixels(); 
}


void draw(){
  float x1 = random(0,width); // x location of copy
  float y1 = 0; // y location of copy
  
  int w = 10; // width of the section
  int h = height; //hieght of section
  
  float x2 = x1 + random(-300,300); // paste the pixel section at a random location up to 300 pixels away from x1
  float y2 = y1 + random(-50,50); // paste the pixel section at a random location up to 100 pixels away from y1
  
  copy( int(x1), int(y1), w, h, int(x2), int(y2), w, h);
  
}
