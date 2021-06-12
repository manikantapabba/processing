class BUBBLE
{
  float x,y,di,start=1;
  BUBBLE(int x,int y,int di)
  {
    this.x=x;
    this.y=y;
    this.di=di;
  }
  void drawing()
  {
    fill(255);
    circle(x,y,di);
  }
  void move()
  {
   x=x+start;
   y=y+start;
  }
  void check()
  {
   if((x>width||x<0))
   {
     start=start*-1;
   }
  }
}
