import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;//use the minim from the library
AudioPlayer song;//upload the song from the file

void setup(){
  size(800,600); //window size
  minim = new Minim(this);//setup the sound library
  song= minim.loadFile("1.mp3");//upload the song 
  frameRate(60);//set the frequency
}

void draw(){
   background(0);//background color

if(song.left.level()<=song.right.level()){
    int r=int(random(255));
    int g=int(random(255));
    int b=int(random(255));//set the random color
    stroke(r,g,b);//color mode rgb
  }
    translate(30,70);//set the transelate
    float bins=1024;//get the max of 1024
    
  for(int i=0;i<bins -1;i++) {//if int i is "i=0;i<bins -1" make the i +1
    strokeWeight(3);//width of the line
    float r1 = 150 + 150 * song.left.get(i);//set the size of two groups of arcs and waving lines
    float r2 = 150 + 150 * song.left.get(i+1);
    
    float R1 = 150 + 150 * song.right.get(i);
    float R2 = 150 + 150 * song.right.get(i+1);
    
    float rad1 = 2 * PI * ((i - 2) / bins);
    float rad2 = 2 * PI * (i / bins);
    
    float Rad1 = 2 * PI * (i / bins);
    float Rad2 = 2 * PI * ((i - 2) / bins);
   
    line(r1 * cos(rad1)+300, r1 * sin(rad1)+200, r2 * cos(rad2)+300, r2 * sin(rad2)+200);
    line(R1 * cos(Rad1)+300, R1 * sin(Rad1)+200, R2 * cos(Rad2)+300, R2 * sin(Rad2)+200); 
  }
    noFill();//get the nonefill arc
    arc(500, 200, 300* song.left.level()*5, 300* song.left.level()*5, -2*PIE, 2*PIE);//set the size of the arc 1
    arc(500, 200, 300* song.right.level()*5, 300* song.right.level()*5, -2*PIE, 2*PIE);//set the size of the arc 2
    
  translate(30,70);
  if( song.isPlaying() )
  {
     text("Press to pause.",10,10);//give the word to mention "prees to pause"
  }
  else
  {
    text("Press to start.", 10, 10);//give the word to mention "prees to start"
  }
  stroke(200);

}
void keyPressed()
{
  if( song.isPlaying() ) {//is the song playing?
    song.pause();//press the key to make a pause
  }
  else if ( song.position() == song.length() ) {//otherwise
    song.rewind();//continue the song 
    song.play();
  } else
   song.play();
  }
