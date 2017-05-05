int x =450;
int y =870;
Car chevy = new Car(75,75,75,75,255,255,255,9);
Car honda = new Car(0,0,75,75,255,255,255,9);
Car toyota = new Car(150,150,75,75,255,255,255,9);
void setup(){
  size(900,900);
  
}
void draw(){
  background(255,255,255);  
  ellipse(x,y,50,50);
  
  if (y==900){
 y=y-30; 
}
if (x>=900){
 x=900; 
}
if (x<=0){
 x=0; 
}
honda.display();
honda.moveLeft();
chevy.display();
chevy.moveRight();
toyota.display();
toyota.moveRight();
  if (intersects(honda)){
    x=450;
    y=870;
  }
}
boolean intersects(Car car) {
if ((y > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        y=y-15;
      
      }
      else if(keyCode == DOWN)
      {
        y=y+15;
        
      }
      else if(keyCode == RIGHT)
      {
        x=x+20;
      
      }
      else if(keyCode == LEFT)
      {
        x=x-20;
      }  
  }

}


class Car {
  int x; 
  int y;
  int w;
  int h;
  int r;
  int g;
  int b;
  int speed;
  Car (int x1, int y1, int w1, int h1, int r1, int g1, int b1, int speeed) {
    x=x1;
    y=y1;
    w=w1;
    h=h1;
    r=r1;
    g=g1;
    b=b1;
    speed=speeed;
  }
  void display() {

    fill(0, 255, 0);
    rect(x, y, 50, 50);
  }
  void moveLeft() {
    x=x+-10;
    if(x<=1){
     x=870; 
    }
      }
   void moveRight(){
     x=x+10;
    if(x>=870){
     x=1; 
    }
   }
   int getX(){
     return x; 
   }
   int getY(){
     return y;
   }
   int getSize(){
         return w;
       }

}

     
     
   

