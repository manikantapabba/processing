Car cars;
Car lines[]=new Car[400];
Car circles[]=new Car[5];
void setup()
{
 size(640,480);
   cars=new Car(0,420,50,50);
   for(int i=0;i<lines.length;i++)
   {
       lines[i]=new Car();    
   }
   for(int i=0;i<circles.length;i++)
   {
       circles[i]=new Car();    
   }
}
void draw()
{
 background(45,30,55);
 cars.body();
 
 for(int i=0;i<lines.length;i++)
   {
       lines[i].rain(); 
       lines[i].rspeed();
   }
   for(int i=0;i<circles.length;i++)
   {
       circles[i].Circles(); 
       circles[i].cspeed();
      circles[i].score();
   }
}

void keyPressed()
{
  if(key=='a')
  {
    cars.movement=-10;
    cars.move();
  }else if(key=='d')
  {
   cars.movement=10;
   cars.move();
  }
}
