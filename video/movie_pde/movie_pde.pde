import processing.video.*;
Movie video;
void setup(){
  size(640,480);
  video=new Movie(this,"myvid.mp4");
  video.loop();
}
void movieEvent(Movie video){
 video.read(); 
}
void draw()
{
 image(video,0,0); 
}//jump,speed,time,duration are some funs...
void mousePressed(){
 //video.jump(180);
 //video.speed(180);
 float T=video.duration();//use time same as duration..
 System.out.println(int(T)+" Seconds");
 
}
