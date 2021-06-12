PImage flowers[] =new PImage[5];
Bubble[] bubbles=new Bubble[5];
void setup()
{
  size(1000,1000);
  for(int i=0;i<flowers.length;i++)
  {
    flowers[i]=loadImage("pic"+i+".jpg");
  }
  for(int i=0;i<bubbles.length;i++)
  {
    bubbles[i]=new Bubble(200,200*i,flowers[i]);
  }
}
void draw(){
  background(255,255,255);
  for(int i=0;i<5;i++)
  {
    bubbles[i].draws();
    bubbles[i].moves();
    bubbles[i].checks();
  }
}
