PImage bird;
void setup()
{
 size(882,1020);
 bird=loadImage("ironman.jpg");
}
void draw()
{
  for(int i=0;i<1000;i++)
  {
    float x=random(width);
    float y=random(height);
    color c=bird.get(int(x),int(y));
    fill(c,25);
    noStroke();
    square(x,y,10);
  }
}
