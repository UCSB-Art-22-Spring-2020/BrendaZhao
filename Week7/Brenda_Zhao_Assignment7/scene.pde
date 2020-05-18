void scene(){
  
  // global translation and rotation
  translate(camX, camY, camZ);
  rotateX(radians(rotX) );
  rotateY(radians(rotY) );
  rotateZ(radians(rotZ) );
    
  //set the moving area of particles
  noStroke(); // no outline
  noFill(); // 
  sphere(boundary * 2); //boundry
 
  
  //set the movement of sa1 
  pushMatrix();//set tye perticular sphere
  translate(-200, 0, 0);//trasition 
  rotateY(-PI * frameCount * 0.003); // rotation
  shape(sa1);// rotation
  popMatrix();
 
    //set the movement of sa12
  pushMatrix();//set tye perticular sphere
  translate(200, 0,0);//trasition 
  rotateY(PI * frameCount * 0.003);// rotation
  shape(sa2);// rotation
  popMatrix();
   
    
}
