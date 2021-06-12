class my_class
{
  float lx1=256,lx2=281;  //feet variables
  
  float hy=355,hx=0,vx=width*3,vy=0;//road variables
  
  float headX=218,headY=128,eyeX=259,eyeY=148;
  
  float mouthX=255,mouthY=202 ,neckX=240,neckY=228;
  
  float stomachX=249,stomachY=298;

  float l=0,change=90;//legs and feet remove or add variable
  
  //int drx=604,dry=295,urx=570,ury=0;
  float drx,dry,urx,ury;
  
  //float x,y,i=0,h=300,k=300,a=2;//parabola curve
  
  
  my_class()
  {     
    
  }
  my_class(int drx,int dry,int urx,int ury){
    this.drx=drx;
    this.dry=dry;
    this.urx=urx;
    this.ury=ury;
    
  }
  
  void roads() //roads
 {
  stroke(255);
  fill(0);
   rect(hx,hy,width*8,90);
 rect(vx,vy,40,355);
     hx=hx-2;
    vx=vx-2;
  
 }
 void man(){
  
  stroke(255);
  strokeWeight(1); 
  fill(139,69,19); 
  rect(headX+10,headY,65-10,100);//head
  
  fill(255,160,122);
  rect(neckX+7,neckY,20-7,40);//neck
  
  fill(165,42,42);
  circle(stomachX+5,stomachY,65-5); //stomach
  
  fill(0);
  rect(eyeX+5,eyeY,19,29);//eye
  
  rect(mouthX,mouthY,28,5);//mouth
  
  if(l==0)
  {
     strokeWeight(3);
     stroke(218,165,32);
     line(240+2,328,240+2,392);
     line(258+2,329,258+2,392); //legs
  
     strokeWeight(2);
     stroke(255,20,147);
     line(240+2,392,lx1,422);//feet
     line(258+2,392,lx2,424);
  }
  
 }
 void movement() //movement of feet
 {
  
  if(lx1==241){
    lx1=256;
  }else{
   lx1=lx1-1; 
  }
  if(lx2==266){
    lx2=281;
  }else{
   lx2=lx2-1;
  }
  
 }
 
 void down()
 {
   
   //headX=headX-change;
   headY=headY+change;
   //eyeX=eyeX-change;
   eyeY=eyeY+change;
   //mouthX=mouthX-change;
   mouthY=mouthY+change ;
   //neckX=neckX-change;
   neckY=neckY+change;
   //stomachX=stomachX-change;
   stomachY=stomachY+change;
   
 }
 
 void up()
 {
   
   //headX=headX-change;
   headY=headY-change;
   //eyeX=eyeX-change;
   eyeY=eyeY-change;
   //mouthX=mouthX-change;
   mouthY=mouthY-change ;
   //neckX=neckX-change;
   neckY=neckY-change;
   //stomachX=stomachX-change;
   stomachY=stomachY-change;
   
 }
 
 void downRect()
 {
   stroke(255);
   fill(255,0,0);
  rect(drx,dry,10,100);
  drx=drx-5; 
 }
 
 void UpRect()
 {
   stroke(255);
   fill(255,0,0);
  rect(urx,ury,10,170);
  urx=urx-5; 
 }
 
}
