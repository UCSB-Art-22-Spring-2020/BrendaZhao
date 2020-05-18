import peasy.*; 
PeasyCam cam; // initialize camera
 

PImage a1,a2;//set the variables
PShape sa1,sa2;

// create an arraylist to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();

int boundary = 600; //boundry of the movemnet
int total =600; //the number of the particles

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation of navigation

void setup(){
   size(900,700, P3D); //window size and make 3d project
   background(0);//background color
    
   // initialize and position peasy cam
   cam = new PeasyCam(this, 600); //make the camera 600 pixels away from the margin
    
   a1 = loadImage("1.jpg"); // load image of sphere "sa1" 
   //noStroke();
   sa1 = createShape(SPHERE, 90); // make sa1 as a sphere
   sa1.setTexture(a1);//wrap sa1 with the image 1

    
   a2 = loadImage("2.jpg"); // load image of sphere "sa2
   //noStroke();
   sa2 = createShape(SPHERE, 90);// make sa2 as a sphere
   sa2.setTexture(a2);//wrap sa1 with the image 2
  
 
   // we want to add "total" number of particles to our plist
   for( int i = 0; i < total; i++){
     plist.add(new particle(
     random(-boundary, boundary), // initial x location
     random(-boundary, boundary), // initial y location
     random(-boundary, boundary), // initial z location
     10, // size
     random(-3, 3), //make the next particle's Xspeed adding from (-3, 3)
     random(-4, 4), //make the next particle's Yspeed adding from (-4, 4)
     random(-5, 5) )); //make the next particle's Zspeed adding from (-5, 5)
   }
    
}
void draw(){
     background(0);//backgroundcolor
    
  if(mousePressed){//if we press the mouse
     pointLight(227,174,185, 0, 0, 0); // open the light
 }
  
  scene(); // run scene
 
  nav(); // run nav
  
  for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }
 
  
}
 
  
