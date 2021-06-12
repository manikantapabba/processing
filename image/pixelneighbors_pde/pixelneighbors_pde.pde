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
 for(int x=0;x<width-1;x++)
 {
   
    for(int y=0;y<height;y++)
    {
      int loc1=x+y*width;
      int loc2=(x+1)+y*width;
      float b1=brightness(bird.pixels[loc1]);
      float b2=brightness(bird.pixels[loc2]);
      float diff=abs(b1-b2);
      if(diff>25)
      pixels[loc1]=color(255);
      else
      pixels[loc1]=color(0); 
    }
 }
 updatePixels();
}
