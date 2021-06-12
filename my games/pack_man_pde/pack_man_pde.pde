float x=80,y=80;//arc variables
float xspeed=1,yspeed=1,sxspeed,syspeed,xside=1,yside=0;
float sumspeed=0,sum=0,ssumspeed;
int open=40,close=320;
int cx=int(random(35,585)),cy=int(random(35,425));//circle variables
int sh=hour(),sm=minute(),ss=second(),currh,currm,currs;//time variables
int  bx=int(random(35,585)),by=int(random(35,425));//bomb variables


void setup(){
  size(640,480);
  println("WELCOME TO MY PAC-MAN GAME-->MANIKANTA PABBA ");
  println("USE W,D,A,X KEYS FOR MOVEMENT--USE R FOR RESUME AND P FOR PAUSE");
}

void draw(){
  
 background(0);

 //boundaries
 fill(202,200,193);
 rect(20,20,600,440);
 
 //arc drawing
  stroke(255);
 fill(0,255,0);
 arc(x,y,40,40,radians(open),radians(close),PIE);
 
 //direction changing
 if(xside==1)
 {
   
 x=x+xspeed+sumspeed*0.25;//speed changes according to score
 
 }else if(yside==1)
 {
   
  y=y+yspeed+sumspeed*0.25;//speed changes according to score
  
 }
 
 //circle drawing
 fill(0,0,255);
 circle(cx,cy,10);
 
 //setting current time
 currh=hour();
 currm=minute();
 currs=second();
 
 //if arc and circle met
 ifMet();
 
 //if arc crash booundary
 ifBoundaryCrash();
 
 //To throw bombs
 throwBomb(); 
 
 //To remove bombs
 removeBomb();
 
  //saveFrame("output/pacman_####.png");
 
}


void keyPressed(){//if keys are pressedsssssss

 if(key=='a')
 {
   Keya();
 }
 else if(key=='d')
 {
   Keyd();
 }
 else if(key=='w')
 {
  Keyw(); 
 }
 else if(key=='x')
 {
   Keyx();
 }
 else if(key=='p')
 {
   Keyp();
 }
 else if(key=='r')
 {
   Keyr();
 }
 
}

void Keya(){//if key a pressed
  
  xside=1;
   yside=0;
   open= 220;
   close=500;
  if(xspeed<0){
  xspeed=xspeed*1;
  }
  else{
    xspeed=xspeed*-1;
  } 
  deSpeed();
   
}

void Keyd(){//if key d pressed

  xside=1;
   yside=0;
  open=40;
  close=320;
 if(xspeed<0){
  xspeed=xspeed*-1;
  }
  else{
    xspeed=xspeed*1;
  } 
  inSpeed();
  
}

void Keyw(){//if key w pressed

  yside=1;
   xside=0;
  open=310;
  close=590;
  if(yspeed<0){
  yspeed=yspeed*1;
  }
  else{
    yspeed=yspeed*-1;
  } 
  deSpeed();
  
}

void Keyx(){//if key x pressed

  yside=1;
   xside=0;
  open=130;
  close=410;
  if(yspeed<0){
  yspeed=yspeed*-1;
  }
  else{
    yspeed=yspeed*1;
  } 
  inSpeed();
  
}

void Keyp(){              //storing values if games is paused
  sxspeed=xspeed;
  syspeed=yspeed;
  ssumspeed=sumspeed;
  xspeed=0;
  yspeed=0;
  sumspeed=0;
}

void Keyr(){        //resuming the game with same speed and direction
  xspeed=sxspeed;
  yspeed=syspeed;
  sumspeed=ssumspeed;  
}


void ifMet()
{
  if(dist(cx,cy,x,y)<12)
  {
   cx=int(random(35,585));cy=int(random(35,425));
   sum=sum+1;
     println("YOUR SCORE IS : ",sum);
   if(sumspeed<0){
     sumspeed=-sum;
   }
   else
   {
     sumspeed=sum; 
   }
  }
  
}

void inSpeed() //to change sign of sumspeed i.e increasing speed
{
  if(sumspeed<0)
  {
    sumspeed=sumspeed*-1;
  }
  else
  {
    sumspeed=sumspeed*1;
  }
  
}

void deSpeed()  //to change sign of sumspeed i.e decreasing speed
{
  if(sumspeed<0)
  {
    sumspeed=sumspeed*1;
  }
  else
  {
    sumspeed=sumspeed*-1;
  }
 
}

void ifBoundaryCrash() // if arc crash boundary
{
  if(x<36 || x>602 || y<36 || y>442)
  {
    println("GAME IS OVER!!!");
    println("YOUR FINAL SCORE IS",sum);
    exit();
  }
  
}

void throwBomb()
{
  
  if( (currh*3600 + currm*60 + currs)-(sh*3600 + sm*60 + ss) > 5 && (currh*3600 + currm*60 + currs)-(sh*3600 + sm*60 + ss) < 16)
  {
   noStroke();
   fill(255,0,0);
   circle(bx,by,20);
    if(dist(x,y,bx,by) < 15)
     {
        println("GAME IS OVER!!!");
        println("YOUR FINAL SCORE IS : ",sum);
        exit();
     }
  }
  
}

void removeBomb()
{
  if((currh*3600 + currm*60 + currs)-(sh*3600 + sm*60 + ss) >= 16)
  {
    sh=currh;
    sm=currm;
    ss=currs;
   bx=int(random(35,585));
   by=int(random(35,425));
  }
  
}
