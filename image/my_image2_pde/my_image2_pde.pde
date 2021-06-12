PImage img;
Ball balls[]=new Ball[10];
void steup()
{
  size(1050,1050);
  img=loadImage("my.jpg");
  image(img,0,0);
  for(int i=0;i<10;i++)
  {
    balls[i]=new Ball();
  }
}
void draw(){
  for(int j=0;j<10;j++)
  {
   balls[j].drawing();
   balls[j].extend();
  }
}
