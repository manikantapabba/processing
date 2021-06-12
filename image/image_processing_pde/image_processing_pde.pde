PImage bird;
void setup()
{
 size(882,1020);
 bird=loadImage("ironman.jpg");
}
void draw()
{
  background(0);
 loadPixels();
 bird.loadPixels();
 for(int x=0;x<width;x++)
 {
   
    for(int y=0;y<height;y++)
    {
      int loc=x+y*width;
      float b=brightness(bird.pixels[loc]);
      if(b > mouseX)
      {
        pixels[loc]=color(255);
      }else{
        pixels[loc]=color(0);
      }
      /*float g=green(bird.pixels[loc]);
      float r=red(bird.pixels[loc]);
      float b=blue(bird.pixels[loc]);
      float d=dist(mouseX,mouseY,x,y);//dist(width/2,height/2,x,y);
      float f=map(d,0,100,2,0);//used map 0 to 800 b/w 1 to 2
      pixels[loc]=color(r*f,g*f,b*f);//use bird.pixels[loc]
      /*brightness of a picture increases by increasing mag of its color value*/
    }
 }
 updatePixels();
}
