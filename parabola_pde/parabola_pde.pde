float x,y,i=0,h=50,k=50,a=4;
void setup()
{
 size(1000,1000); 
    background(255);
}
void draw()
{

for(i=30;i<70;i++)
{
 circle(i,parabola(i),5);
}
  
}

float parabola(float x)//(x-h)^2=4a(y-k);
{
  return (((x-h)*(x-h))/4*a)+k;
  
  
}
