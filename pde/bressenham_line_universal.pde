  int x1=300,x2=700,y1=300,y2=68,swap=0,e;
void setup()
{
   size(1000,1000);  
}

void draw()
{
int dx=abs(x2-x1),dy=abs(y2-y1),s1=sign(x2-x1),s2=sign(y2-y1);
    if(dy>dx)
    {
        int temp =dx;
        dx=dy;
        dy=temp;
       swap=1;
    }
    else
    {
        swap=0;
 e=2*dy-dx;
    }
for(int i=1;i<dx;i++)
{
  point(x1,y1);
      while(e>0)
      {
        if(swap==1)
        x1=x1+s1;
        else
        y1=y1+s2;
       e=e-(2*dx);
      }
  if(swap==1)
    y1=y1+s2;
  else
    x1=x1+s1;
 e=e+(2*dy);
}
}    
int sign(int x)
{
  if(x<0)
  return -1;
  else if(x>0)
  return 1;
  else 
  return 0;
}
