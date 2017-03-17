int i= 1;
int j= 1;
void setup(){
  size (1000,1000);
  
  
}
void draw(){
   background(i++ ,i++,i++);
  fill(i++ ,i++,i++);
 rect(i++,55, 55, 55);
 fill(random(255),random(255) ,random(255));
 rect(55,j++, 55, 55);  
}
