float cx,cy,cr,f,l,k,co;
void setup(){
  size(1000,1000);
   background(255);
}
void draw(){
 cx=random(0,width);
 cy=random(0,height);
 cr=random(0,100);
 f=random(255);
 k=random(255);
 l=random(255);
 fill(f,k,l);
 circle(cx,cy,cr);
} 
void keyPressed()
{
  co=random(255);
  background(co);
}
