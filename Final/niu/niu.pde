import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;//use the minim from the library
AudioPlayer song;//upload the song from the file

import peasy.*;

PeasyCam cam; // initialize our camera object

PShape boxc1,boxc2,box1,box2,box3,box4,box5,box6,box7,box8;
PImage imgc1,imgc2,img1,img2,img3,img4,img5,img6,img7,img8;
PShape birth;

ArrayList<particle> plist = new ArrayList<particle>();

float x,y,z; // coordinates for a box
int boundary = 50;
int total = 200;

float rotX, rotY, rotZ, camX, camY, camZ;

void setup(){
  size(1000,1000,P3D);
  
   minim = new Minim(this);//setup the sound library
   song= minim.loadFile("out.mp3");//upload the song 
   song.loop();
   
   
  imgc1 = loadImage("imgc1.jpg");
  boxc1 = createShape(BOX, 100);
  boxc1.setTexture(imgc1); 


  imgc2 = loadImage("imgc2.jpg");
  boxc2 = createShape(BOX, 98);
  boxc2.setTexture(imgc2); 
  
  img1 = loadImage("img1.jpg");
  box1 = createShape(BOX,150,200,25);
  box1.setTexture(img1); 
  
  img2 = loadImage("img2.jpg");
  box2 = createShape(BOX,150,200,25);
  box2.setTexture(img2); 
  
    
  img3 = loadImage("img3.jpg");
  box3 = createShape(BOX,25,200,150);
  box3.setTexture(img3); 
  
  img4 = loadImage("img4.jpg");
  box4 = createShape(BOX,25,200,150);
  box4.setTexture(img4); 
   
  img5 = loadImage("img5.jpg");
  box5 = createShape(BOX,25,200,150);
  box5.setTexture(img5); 
  
  img6 = loadImage("img6.jpg");
  box6 = createShape(BOX,25,200,150);
  box6.setTexture(img6); 
  
  img7 = loadImage("img7.jpg");
  box7 = createShape(BOX,25,200,150);
  box7.setTexture(img7); 
  
  img8 = loadImage("img8.jpg");
  box8 = createShape(BOX,25,200,150);
  box8.setTexture(img8); 
   
  cam = new PeasyCam(this, 1000);
  
  birth = loadShape("cake.obj");
  
   for ( int i=0; i < total; i++) {
    plist.add( new particle(
    random(-boundary,boundary), // initial x location
    random(-boundary,boundary), // ...y
    random(-boundary,boundary), // ...z
    8, // size
    random(-2,2), // xspeed
    random(-2,2), // yspeed
    random(-2,2 ) )); 
   }// zspeed
  
}


void draw(){
  background(0);
  
  noStroke();
 
   nav();
   scene();
   
   shape(birth,0,-100,80,80);


 for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }


  //center in & out
  pushMatrix();
  shape(boxc1,0,0);
  noStroke();
  popMatrix();

//out
  pushMatrix();
  noStroke();
  shape(boxc2,0,0);
  popMatrix();

  
  //front 1
  pushMatrix();
  translate(0,0,400);
  noStroke();
  shape(box1,0,0);
  popMatrix();

  
  //back 2
  pushMatrix();
  translate(0,0,-400);
  noStroke();
  shape(box2,0,0);
  popMatrix();
  
  //left 3
  pushMatrix();
  translate(-400,0,0);
  noStroke();
  shape(box3,0,0);
  popMatrix();
  
  
  //right 4
  pushMatrix();
  translate(400,0,0);
  noStroke();
  shape(box4,0,0);
  popMatrix();
  
  //front left 5
  pushMatrix();
  translate(-300,0,300);
  rotateY( radians(45) );
  noStroke();
  shape(box5,0,0);
  popMatrix();
  
  //back left 6
  pushMatrix();
  translate(-300,0,-300);
  rotateY( radians(-45) );
  noStroke();
  shape(box6,0,0);
  popMatrix();
  
  
  //front right 7
  pushMatrix();
  translate(300,0,300);
  rotateY( radians(-45) );
  noStroke();
  shape(box7,0,0);
  popMatrix();
    
  //back right 8
  pushMatrix();
  translate(300,0,-300);
  rotateY( radians(45) );
  noStroke();
  shape(box8,0,0);
  popMatrix();

    
   
}
