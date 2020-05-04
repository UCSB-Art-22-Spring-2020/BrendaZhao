particle a;//initialize a class of particle named a
particle b;
particle c;
particle d;

particle A;//initialize a class of particle named A
particle B;
particle C;
particle D;

void setup(){
  size(600,600);//window size
  
  a = new particle(width/2, height/2, 15,0,3);// use constructor to set information about this particular a
  b = new particle(width/2, height/2, 15,3,0);
  c = new particle(width/2, height/2, 15,0,-3);
  d = new particle(width/2, height/2, 15,-3,0);
  
  A = new particle(width/2, height/2, 10,3,3);// use constructor to set information about this particular A
  B = new particle(width/2, height/2, 10,3,-3);
  C = new particle(width/2, height/2, 10,-3,3);
  D = new particle(width/2, height/2, 10,-3,-3);
  
}

void draw(){
  
  a.display();// display a's information
  b.display();
  c.display();
  d.display();
  
  A.display();//display A's information
  B.display();
  C.display();
  D.display();

  
}

void mouseReleased(){
  a.size -=3;//decrease a's size by 3 by every click
  b.size -=3;
  c.size -=3;
  d.size -=3;
  
  A.size -=2;//decrease A's size by 2 by every click
  B.size -=2;
  C.size -=2;
  D.size -=2;
}
