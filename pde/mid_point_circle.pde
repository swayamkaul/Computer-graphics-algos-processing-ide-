float r=500,j=500,k=500,count=0;
int x1,y1;
void setup()
{
  size(1000,1000);
}
void circle(int x, int y)
{
 
  point(x+500,y+500);  point(-x+500,y+500);
  point(x+500,-y+500); point(-x+500,-y+500);
  point(y+500,x+500);  point(-y+500,x+500);
  point(y+500,-x+500); point(-y+500,-x+500);
  
}

void draw()
{
if(count==0)  {
  x1=0;y1=int(r);
  circle(x1,y1);
  r=50;
  r=(5/4) -r;
  while(x1<=y1)
  {
      if(r<0)
      {
        x1=x1+1;
        circle(x1,y1);
        r=r+(2*x1)+1;
      }
      else
      {
        x1=x1+1;
        y1=y1-1;
        circle(x1,y1);
        r=r+(2*x1)-(2*y1)+1;
      } 
}
}
count++;
}
