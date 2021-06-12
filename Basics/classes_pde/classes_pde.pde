BUBBLE b;
void setup()
{
  size(500,500);
  b=new BUBBLE(50,50,50);
}
void draw()
{
  background(0);
   b.move();
 b.drawing();  
 b.check();
}
