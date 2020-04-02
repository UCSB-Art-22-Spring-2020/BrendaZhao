//Brenda Zhao
//Art 22 
//2020-4-2
//Name 


void setup(){
  size(1400,600);//make a window
}

void draw(){
  //background(255);
  
  if ( mouseY < 100 ){//set position and color
    stroke(237,237,248,95);
  } else if ( mouseY < 200 ){
    stroke(223,247,243,95);
  } else if ( mouseY < 300 ){
    stroke(187,227,230,95);
  } else if ( mouseY < 400 ){
    stroke(135,136,162,95);
  } else if ( mouseY < 500 ){
    stroke(207,170,208,95);
  } else if ( mouseY < 600 ){
    stroke(250,225,232,95);
  }else if ( mouseY < 600 ){
    stroke(237,237,248,95);
  }
  
    strokeWeight(30);//size
    point(mouseX,mouseY);//let the point move with the mouse
  
  
  
}
