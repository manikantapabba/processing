size(640,480);
background(255);
strokeWeight(12);
stroke(0,255,0);
blendMode(SUBTRACT);//ADD,EXCLUSION,MULTIPLY,SCREEN,SUBTRACT,DARKEST,LIGHTEST,REPLACE,BLEND
line(50,100,100,200);
stroke(255,0,0);
line(100,100,50,200);
//color r1,r2;
blendMode(BLEND);
stroke(blendColor(color(255),color(255,0,0),SUBTRACT));
line(300,300,500,500);
//r1=blendColor(color(255),color(0,255,0),SUBTRACT);
//r2=blendColor(color(255),color(255,0,0),SUBTRACT);
//stroke(blendColor(r2,r1,SUBTRACT));
//line(200,200,400,200);
