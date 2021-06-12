BUBBLE b,b1;
void setup()
{
  size(500,500);
  b=new BUBBLE(50,50,50,color(255,0,0));
  b1=new BUBBLE(0,250,50,color(0,255,0));
}
void draw()
{
  background(0);
   b.move();
 b.drawing();  
 b.check();
 
  b1.move();
 b1.drawing();  
 b1.check();
}
