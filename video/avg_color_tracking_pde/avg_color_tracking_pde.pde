import processing.video.*;
Capture video;
float threshold=25;
color trackColor;
void setup()
{
  size(640,480);
  video=new Capture(this,640,480);
  video.start();
  trackColor=color(255,0,0);
}
void captureEvent(Capture video)
{
 video.read();   
}
void draw()
{
  video.loadPixels();
  image(video,0,0);
  threshold=80;
  float avgx=0;
  float avgy=0;
  
  int count=0;
  for(int x=0;x<video.width;x++)
  {
    for(int y=0;y<video.height;y++)
    {
      int loc=x + y* video.width;
      color currentColor=video.pixels[loc];
      float r1=red(currentColor);
      float g1=green(currentColor);
      float b1=blue(currentColor);
      float r2=red(trackColor);
      float g2=green(trackColor);
      float b2=blue(trackColor);  
      float d=distSq(r1,g1,b1,r2,g2,b2);
      if(d<threshold*threshold){
       avgx+=x;
       avgy+=y;
       count ++;
      }
    }
  }
  if(count>0)
  {
    avgx=avgx/count;
    avgy=avgy/count;
    fill(255);
    stroke(0);
    strokeWeight(4);
    ellipse(avgx,avgy,20,20);
  } 
}
float distSq(float x1,float y1,float z1,float x2,float y2,float z2){
  return (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
}
void mousePressed()
{
  int loc=mouseX+mouseY*width;
  trackColor=video.pixels[loc]; 
}
