class Car{
  
  int bx1,by1,bw,bh,threshold=20,movement;
  
  float rax1=random(width),ray1=random(-200,-100),raspeed=random(5,10),ral=random(10,20),cx=random(640),cy=random(300),cspeed=3;
    
 Car(int rx1,int ry1,int rw,int rh) 
  {
    bx1=rx1;
   by1=ry1;
   bw=rw;
   bh=rh;
  }
  Car()
  {
    
    
  }
  
  void rain(){
    stroke(255);
   line(rax1,ray1,rax1,ray1+ral);    
  }
  
  void rspeed(){
    ray1=ray1+raspeed;
    
    if(ray1>height){
     ray1=random(-200,-100); 
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
      cy=random(0,10);
    }
  }
  
  void score(){
    
    if(distSq(bx1+bw/2,by1+bh/2,cx,cy) < threshold*threshold){  
      print("ya");
    }

  }
  
  void body(){
    stroke(255);
    fill(255,100,50,230);
    strokeWeight(2);
    rect(bx1,by1,bw,bh);   
  }
  
  void move(){
   bx1=bx1+movement;  
  }
  
  float distSq(float x1,float y1,float x2,float y2){
  return (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1);
  }
}
