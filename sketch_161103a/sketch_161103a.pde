//Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don't know how to do this. The suggestions under each step should help you with your program.
import ddf.minim.*;       //at the very top of your sketch
Minim minim;        //at the top of your sketch
AudioSample sound;      //at the top of your sketch
int movex= 20;
int width1=750;
int movey= 5;
int speedx=10;
int speedy=14; 
void setup() {
  size(750, 800);
  minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("ride my.wav", 128);//in the setup method
}
void draw() {
  background(random (255), random (255), random (255));
  ellipse(movex, movey, 75, 75);
  fill(random (255), random (255), random (255));
  stroke(random (255), random (255), random (255));
  movex= movex+speedx;
  movey= movey+speedy;
  if (movex>750) {
    speedx=-speedx;
  }
  if (movex<0) {
    speedx=-speedx;
  }
  if (movey<0) {
    speedy=-speedy;
  }
  if (movey>750) {
    speedy=-speedy;
  }
  rect(mouseX, 650, 100, 10);
  if (intersects(movex, movey, mouseX, 650, 100)) {
    speedy=-speedy;
    speedx=-speedx;
    sound.trigger();
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}


