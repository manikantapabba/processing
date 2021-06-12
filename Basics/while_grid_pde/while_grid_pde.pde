float x=0, y=0, space=20;
void setup()
{
  size(1920,1080);
}
void draw()
{
  background(255);
   space=space+ random(-2,2);
  stroke(0);
  strokeWeight(2);
  x=0;
  while (x<width)
  {
    line(x, 0, x, height);
    x=x+space;
  }
  y=0;
  while (y<height)
  {
    line(0, y, width, y);
    y=y+space;
  }
}
