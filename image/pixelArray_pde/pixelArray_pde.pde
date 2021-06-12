//set(x,y,color()) is used to set particular color at particular pixel
//get(x,y) is used to get particular color at particular pixel
size(1000,1000);
background(0);
//for(int i=0;i<width;i++)
//  set(500,i,color(255));
  ////pixels is array
  //loadPixels();
  //for(int i=0;i<pixels.length;i++){
  //pixels[i]=color(random(255));
  //}
  //updatePixels();
  
  
  loadPixels();
  for(int x=0;x<width;x++){
    for(int y=0;y<height;y++){
      float d=dist(x,y,width/2,height/2);
      int loc=x+y*width;
     pixels[loc]=color(d);//color(0,y/2,0)..etc..
  }
  }
  updatePixels();
  
  
  
  
  
  
  
  
  
  
  
  
  
