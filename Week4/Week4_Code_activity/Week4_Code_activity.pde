//Brenda Zhao
//Art 22  
//Code Activity of week 4
//Array


int[] even = new int[20]; // array of even numbers, make sure we have only 20 of them
int[] odd = new int[20]; // array of even numbers, make sure we have only 20 of them


void setup(){
  
  for( int i = 1; i < even.length; even[i] = 2*i++){// for each number start at 1, use the form 2*i++ to get 20 even numbers
   }
   
  for(int i = 0; i < odd.length; odd[i] = 2*i++ + 1){ // for each number start at 0, use the form 2*i++ + 1 to get 20 odd numbers
    }
    //i find the way to get even numbers (2*i++) from the processing forum, since i try to use i + 2, nut it did not work
    
   printArray(even) ; // print out all even numbers
   
   printArray(odd); // print out all odd numbers
    
}


void draw(){
}
