import processing.video.*;
Capture video;
void setup()
{
  size(1280,720);
  video=new Capture(this,640,480,30);
 // printArray(Capture.list());
  video.start();
}
void captureEvent(Capture video)
{
  video.read();
}
void draw()
{
 background(0);
 image(video,0,0); 
}
