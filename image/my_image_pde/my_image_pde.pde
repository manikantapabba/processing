PImage img;
int x=1;
void setup()
{
  size(1000,1000);
  img=loadImage("my.jpg");//4000,3000
  
}
void draw(){
  loadPixels();
  img.loadPixels();
   final int mx=mouseX;
   final int my=mouseY;
  if(x>0){
  for(int x=0;x<width;x++)
    for(int y=0;y<height;y++)
    {
     int loc=x+y*width;
      pixels[loc]=img.get(int(x*3),int(y*3));
      //pixels[loc]=color();
      float g=green(pixels[loc]);
      float r=red(pixels[loc]);
      float b=blue(pixels[loc]);
      pixels[loc]=color(r*1.1,g*1.1,b*1.1); 
    }
 }
   else{  
  for(int x=0,k=0;x<width && k<80;x++,k++)
    for(int y=0,j=0;y<height && j<80;y++,j++)
    { 
     int loc=x+y*width;
      pixels[loc]=get(int(mx+k),int(my+j));
      //pixels[loc]=color();
      float g=green(pixels[loc]);
      float r=red(pixels[loc]);
      float b=blue(pixels[loc]);
      pixels[loc]=color(r*1.1,g*1.1,b*1.1); 
      j++;
      }
   }
     updatePixels();
  }
 void mousePressed()
 {
  x=x*-1;
 }
 
