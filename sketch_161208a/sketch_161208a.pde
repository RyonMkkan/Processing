


int ballY= 0;
int ballX=0;
int score=0;
void setup(){
  size(1000, 1000);
 fill(random(255),random(255),random(255));
  ballX = (int)random (1000);

  
  
  
  
}


void draw(){
  //background (random (255),random (255),random (255));
  background (255,00,255);
  ellipse(ballX,ballY,10,30);
  //fill(random(255),random(255),random(255));
  //stroke(random(255),random(255),random(255));
  stroke(200,200,201);
  ballY=ballY+5;
  rect(mouseX,800,50,50);
 

   if(ballY>1000){
     ballY=0;
     ballX = (int)random (1000);
     
   }
   checkCatch(50 );
   
  
  
  
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
