void setup(){ //execute once 
  size(1000,1000); 
  background(255,100,150);//every time background will be not wiped or not over covered the pixels
}
void draw(){//executes again and again
 //background(255,100,150);
fill(0,100,50);
stroke(180);
circle(mouseX,mouseY,50);//built in variables
square(mouseX,height-mouseY,100);//we use height and width...
line(pmouseX,pmouseY,mouseX,mouseY);
}
/*void keyPressed()
{
  background(255);
  square(mouseX,mouseY,180);//mousePressed,mouseButton is also built in variable
}
void mouseReleased()//mousePressed(),mouseWheel(),mouseClicked(),mouseMoved(),mouseDragged
{
  background(0);
  square(mouseX,mouseY,100);
}*/
