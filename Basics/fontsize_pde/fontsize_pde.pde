PFont font;

void setup () {
size(500,500);
font = createFont ("Serif",height);
textFont (font);
}

void draw () {
background(255);  
fill(0);
textAlign(CENTER,CENTER);
text("p5",width/2,height/2);
}
