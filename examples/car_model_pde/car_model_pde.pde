Car cars;
Car lines[]=new Car[400];
Car circles[]=new Car[10];
void setup()
{
 size(1920,1080);
   cars=new Car(70,540,75,0,340,300,150);//car
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
 stroke(255);
   //line(0,450,1920,450);
    //line(0,650,1920,650);
    fill(0);
    rect(0,450,1920,200);
 cars.tyre1();
 cars.tyre2();
 cars.body();
 cars.check();
 for(int i=0;i<lines.length;i++)
   {
       lines[i].rain(); 
       lines[i].rspeed();
   }
   for(int i=0;i<circles.length;i++)
   {
       circles[i].Circles(); 
       circles[i].cspeed();
   }
   
   saveFrame("output/rain_####.png");
 
}

void keyPressed()
{
  if(key=='s')
  {
   cars.movement=0;
  }else if(key=='r')
  {
   cars.movement=5; 
  }
}
