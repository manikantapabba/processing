class Ball
{
  float x,y;
  Ball(){
    x=width/2;
   y=height/2;
  }
  void drawing()
  {
    ellipse(x,y,20,20);  
  }
  void extend()
  {
   x=x+random(1,5);
   y=y+random(1,5);
    
  }
}
