float x =450;
float y =870;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
Car chevy = new Car(75,75,75,75,255,0,255,9);
Car honda = new Car(0,0,75,75,255,255,255,9);
Car toyota = new Car(150,150,75,75,255,255,255,9);
Car jeep = new Car(225,225,75,75,255,255,255,9);
Car bmw = new Car(300,300,75,75,255,255,255,9);
Car audi = new Car(375,375,75,75,255,255,255,9);
//Car  = new Car(225,225,75,75,255,255,255,9);
//Car  = new Car(300,300,75,75,255,255,255,9);
//Car  = new Car(375,375,75,75,255,255,255,9);
void setup(){
  size(900,900);
  
}
void draw(){
  background(random(255),random(255),random (255));  
  ellipse(x,y,50,50);
  if(up){
  y= y-3.5;
  }
  if(down){
  y= y+3.5;
  }
  if(right){
  x= x+3.5;
  }
  if(left){
  x= x-3.5;
  }
  
  if (y==900){
 y=y-30; 
}
if (x>=900){
 x=900; 
}
if (x<=0){
 x=0; 
}
if (y<-75){
  y=-25;
}
honda.display();
honda.moveLeft();
chevy.display();
chevy.moveRight();
toyota.display();
toyota.moveLeft();
jeep.display();
jeep.moveRight();
bmw.display();
bmw.moveLeft();
audi.display();
audi.moveRight();
if (intersects(audi)){
    x=450;
    y=870;
  }
if (intersects(bmw)){
    x=450;
    y=870;
  }
if (intersects(chevy)){
    x=450;
    y=870;
  }
if (intersects(jeep)){
    x=450;
    y=870;
  }
 if (intersects(toyota)){
    x=450;
    y=870;
  }
  if (intersects(honda)){
    x=450;
    y=870;
  }
}
boolean intersects(Car car) {
if ((y > car.getY() && y < car.getY()+75) && (x > car.getX() && x < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
void keyReleased(){
  if(keyCode == UP){
   up=false; 
  }
        else if(keyCode == DOWN)
      {
        down=false;
        
      }
      else if(keyCode == RIGHT)
      {
        right=false;
      
      }
      else if(keyCode == LEFT)
      {
       left=false;
      }  
  
  
  
  
  
  
}


void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
       up= true;
      
      }
      else if(keyCode == DOWN)
      {
        down = true;
        
      }
      else if(keyCode == RIGHT)
      {
        right = true;
      
      }
      else if(keyCode == LEFT)
      {
        left = true;
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

    fill(random(255), random(255), random(255));
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

     
     
   

