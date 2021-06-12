int sm,ss,cm,cs,count=0;
my_class obstacles[]= new my_class[1000];
my_class man;
void setup()
{
 size(640,480);
 man =new my_class();
 for(int i=0;i<obstacles.length;i++)
 {
  obstacles[i]=new my_class(604+i*300,295,1000+i*880,0); 
 }

}

void draw()
{
  
   background(100,80,100);
   man.roads();
   man.man();
   man.movement();
   //if(count==0){
   //   man.Once();
   //   count++;
   //}
   for(int i=0;i<obstacles.length;i++)
   {
    obstacles[i].downRect(); 
    obstacles[i].UpRect();
    //obstacles[i].check();
   }
   if(count==1)
   {
    man.up(); 
    count=0;
   }
    
   //println(mouseX,mouseY);
}

void keyPressed()
{
  
 if(key=='j')
 {
  man.l=1; 
  man.up();
 }
 else if(key=='d')
 {
   man.l=1;
  man.down(); 
   
 }
   
}

void keyReleased()
{
  
 if(key=='j')
 {
  man.l=0; 
   man.down();
 }
 else if(key=='d')
 {
   man.l=0;
  man.up();   
 }
   
}
