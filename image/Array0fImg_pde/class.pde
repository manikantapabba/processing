class Bubble{
  int x,y,moves=10;PImage img;
  Bubble(int x,int y,PImage img){
    this.x=x;
    this.y=y;
    this.img=img;
  }
  void draws(){
    image(img,x,y,200,100);
  }
  void moves(){
   x=x+moves;//int(random(200));
   //y=int(random(900));
  }
  void checks(){
   if(x==width-200 || x==0)
   {
     moves=moves*-1;
   }
  }
}
