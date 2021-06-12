float c=100;
boolean go=true;
void setup(){
  size(1000,1000);
}
void draw()
{
  background(255);
  fill(0);
  ellipse(c,500,30,15);//same as c conditional,relationaland logical statements
 // c=c+3;
  if(go)    //c==1000)
  {
   c=c+3;   // c=100;
  }
  
}
void keyPressed(){
  go=!go;
}
