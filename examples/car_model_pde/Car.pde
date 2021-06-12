class Car{
  
  int tx1,ty1,tx2,ty2,tw;
  
  int bx1,by1,bw,bh,movement=5;
  
  float rx1=random(width),ry1=random(-200,-100),rspeed=random(5,10),rl=random(10,20),cx=random(1920),cy=0,cspeed=random(1,3);
    
 Car(int cx1,int cy1,int cw,int rx1,int ry1,int rw,int rh) 
  {
    tx1=cx1;
    ty1=cy1;
    tx2= cx1+150;
    ty2=cy1;
    tw=cw;
    bx1=rx1;
   by1=ry1;
   bw=rw;
   bh=rh;
  }
  
  Car(){
    
  }
  
  void rain(){
    stroke(255);
   line(rx1,ry1,rx1,ry1+rl);    
  }
  
  void rspeed(){
    ry1=ry1+rspeed;
    
    if(ry1>height){
     ry1=random(-200,-100); 
    }
    
  }
  
  void Circles(){
    stroke(255,0,0);
    fill(0,255,0);
    circle(cx,cy,30);
    
  }
  
  void cspeed(){
    cy=cy+cspeed;
    if(cy>height){
      cy=0;
    }
  }
  
  void tyre1(){
    stroke(255);
    fill(45,36,35);
    strokeWeight(2);
    circle(tx1,ty1,tw);
    tx1=tx1+movement;
  }
  void tyre2(){
    stroke(255);
   fill(45,36,35);
   strokeWeight(2);
  circle(tx2,ty2,tw);
  tx2=tx2+movement;
    
  }
  void body(){
    stroke(255);
    fill(255,100,50,230);
    strokeWeight(2);
    rect(bx1,by1,bw,bh);   
    bx1=bx1+movement;
  }
  void check(){
    if(bx1>1600 || bx1==0){
    movement=movement*-1;
    }
    
  }
}
