Car chevy = new Car(0,0,75,75,255,255,255,9);
void setup(){
  size(1000,1000);
  
}



void draw(){
  background(255,255,255);
  chevy.draw();
  chevy.move();
  
  
}
class Car{
 int x; 
 int y;
 int w;
 int h;
 int r;
 int g;
 int b;
 int speed;
 Car (int x1,int y1, int w1,int h1,int r1,int g1,int b1,int speeed){
 x=x1;
 y=y1;
 w=w1;
 h=h1;
 r=r1;
 g=g1;
 b=b1;
 speed=speeed;
 
 
 }
void draw(){
  fill(r,g,b);
  
  
 rect(x,y,50,50);
}
void move(){
 x=x+speed;
 
  
}

}

   
 
 









