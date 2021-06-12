float x=0;
void setup()
{
 size(1000,1000); 
}
void draw()
{
  
  background(0);
  x=0;
  while(x<width)
  {
    if(mouseX<1)
    {
      x=x+300;
    }else{
      x=x+mouseX;
    }
   circle(x,500,100);
  }
}
