void setup(){
color(60,23,43);
size(400,400);
background(17,153,119);
}





void draw(){
  background(17,153,119);
ellipse(80,20,40,40);
if(mouseX>60){
  mouseX=60;}
  if(mouseY>30){
  mouseY=30;}
ellipse (mouseX+40,mouseY,10,10);
ellipse(20,20,40,40);
ellipse(mouseX-20,mouseY,10,10);

}

