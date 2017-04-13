int x =450;
int y =870;
Car chevy = new Car(0, 0, 75, 75, 255, 255, 255, 9);
void setup(){
  size(900,900);
  
}
void draw(){
  background(255,255,255);
//background(random(255),random(255),random(255));
  //fill(random(255),random(255),random(255));
  //stroke(random(255),random(255),random(255));
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
  void draw() {

    fill(0, 255, 0);
    rect(x, y, 50, 50);
  }
  void move() {
    x=x+speed;
    y=y+speed;
  }
}
