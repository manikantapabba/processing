class BUBBLE
{
  float x,y,di,start=random(0,5);
  color col;
  BUBBLE(int x,int y,int di,color col)
  {
    this.x=x;
    this.y=y;
    this.di=di;
    this.col=col;
  }
  void drawing()
  {
    fill(col);
    circle(x,y,di);
  }
  void move()
  {
   x=x+start;
   y=y+start;
  }
  void check()
  {
   if((x>width||x<0)||(y>height||y<0))
   {
     start=start*-1;
   }
  }
}
