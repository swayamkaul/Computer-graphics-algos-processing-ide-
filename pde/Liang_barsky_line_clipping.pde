
 int x1,y1,x2,y2,xmax,xmin,ymax,ymin,dx,dy,i;
  int[] p=new int[4],q=new int[4];
  float t1,t2,xx1,yy1,xx2,yy2;
  float[] t=new float[4];
  

void setup(){
size(700,700);
xmin=200;
ymin=200;
xmax=400;
ymax=400;

x1=100;
y1=100;
x2=450;
y2=300;


}
void draw(){
  background(225);
  fill(225);
rectMode(CORNERS);
rect(xmin,ymin,xmax,ymax);
line(x1,y1,x2,y2);
  dx=x2-x1;
  dy=y2-y1;
  p[0]=-dx;
  p[1]=dx;
  p[2]=-dy;
  p[3]=dy;
  q[0]=x1-xmin;
  q[1]=xmax-x1;
  q[2]=y1-ymin;
  q[3]=ymax-y1;
  
  
  if(mousePressed==true)
  {
   for(i=0;i < 4;i++){ 
    if(p[i]!=0){
      t[i]=(float)q[i]/p[i];
    }
    else
      if(p[i]==0 && q[i] < 0)
        print("line completely outside the window");
      else
        if(p[i]==0 && q[i] >= 0)
          print("line completely inside the window");
  }
  if (t[0] > t[2]){
    t1=t[0];
  }
  else{
    t1=t[2];
  }
  if (t[1] < t[3]){
    t2=t[1];
  }
  else{
    t2=t[3];
  }
  if (t1 < t2){
    xx1=x1+t1*dx;
    xx2=x1+t2*dx;
    yy1=y1+t1*dy;
    yy2=y1+t2*dy;
    //line after clipping
     background(225);
     rectMode(CORNERS);
     fill(225);
    rect(xmin,ymin,xmax,ymax);
    line(xx1,yy1,xx2,yy2);
    println(xx2);
  }
  else{
    print("line lies out of the window");
  }
}
}
