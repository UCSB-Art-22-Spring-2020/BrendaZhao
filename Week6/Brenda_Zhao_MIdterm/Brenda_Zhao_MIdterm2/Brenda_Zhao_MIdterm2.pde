//Brenda Zhao
//art22 midterm1

int [] a = new int [40];// create a new array with 40 elements
int [] b = new int [10]; //another new array with 10 elements

void setup() {
 
  a[0]=1001; //make the first number  equal to 1002
  a[37]= 3737; //make the last third number  equal to 1002
  printArray (a); //print this array

  
  
  for (int i = 1; i < a.length; i++) { //make a for loop
    a[i]=int (random(1,40)); //make the viriable "i"random seltect fro (1,40)
  } 
  
  printArray(a);//print this array
  println("10th number:", a[9]); //print th tenth number
  
 
  println("click:");
  for (int o = 0; o < b.length; o++) { //make a fpr loop
    b[o]=int (random(40,80)); //make the viriable "i"random seltect fro (40,80)
  } 
}

void draw() {
}

void mouseReleased() {
  for (int o = 0; o < b.length; o++) { //make a for loop
    b[o]=int (random(40,80)); //make the viriable "i"random seltect fro (40,80)
  } 
  printArray(b);//print the array
}
