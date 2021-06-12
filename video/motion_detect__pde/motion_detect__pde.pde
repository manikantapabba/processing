import processing.video.*;
Capture video;
PImage prev;
float threshold=25;
void setup()
{
  size(640,480);
  video=new Capture(this,640,480);
  video.start();
  prev=createImage(640,480,RGB);
}
void captureEvent(Capture video)
{
  prev.copy(video,0,0,640,480,0,0,640,480);
  prev.updatePixels();
 video.read();   
}
void draw()
{
  video.loadPixels();
  prev.loadPixels();
  image(video,0,0);
  threshold=80;
  loadPixels();
  for(int x=0;x<video.width;x++)
  {
    for(int y=0;y<video.height;y++)
    {
      int loc=x + y* video.width;
      color currentColor=video.pixels[loc];
      float r1=red(currentColor);
      float g1=green(currentColor);
      float b1=blue(currentColor);
      color prevColor=prev.pixels[loc];
      float r2=red(prevColor);
      float g2=green(prevColor);
      float b2=blue(prevColor);  
      
      float d=distSq(r1,g1,b1,r2,g2,b2);
      
      if(d < threshold*threshold){
       pixels[loc]=color(255);
      }else{
       pixels[loc]=color(0); 
      }
    }
  }
  updatePixels();
}
float distSq(float x1,float y1,float z1,float x2,float y2,float z2){
  return (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
}
