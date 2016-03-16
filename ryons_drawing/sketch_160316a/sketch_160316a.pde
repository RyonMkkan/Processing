void setup(){
size(500,500);
fill(170,153,04);
ellipse(150,150,300,300);
fill(204,0,0);
ellipse(150,150,275,275);
fill(221,221,119);
ellipse(150,150,270,270); 
}
void draw()
{
  
  if (mousePressed){
    PImage pepperoni= loadImage ("garlick.ppm.gif");
    image(pepperoni,mouseX,mouseY);
    
}
}
