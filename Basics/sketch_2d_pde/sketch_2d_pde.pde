void setup(){ //execute once 
  size(1000,1000); 
}
void draw(){//executes again and again
colorMode(HSB,200,150,255);//hue,saturationand brightness or we can use RGB
background(255,100,150);
fill(0,100,50);
stroke(255);
circle(500,500,50);
point(500,500);
triangle(750,550,250,350,200,100);
ellipse(800,800,50,70);
quad(50,100,40,550,60,600,80,900);
line(100,800,500,800);
rect(500,100,300,200);
square(800,500,100);
arc(200,500,100,100,QUARTER_PI,PI,PIE);/*open,chord,pie as last attribute*/
}
