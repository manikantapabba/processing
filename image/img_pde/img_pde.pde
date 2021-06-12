PImage img;
void setup(){
  size(1920,1080);
img=loadImage("ironman.jpg");
}
void draw()
{
  background(255);
  tint(255,0,0);
   imageMode(CENTER);
 image(img,960,540,mouseX,mouseY); 
}
