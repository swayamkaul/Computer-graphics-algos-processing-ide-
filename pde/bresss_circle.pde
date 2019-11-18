void setup()
{
  size(1000,1000);
}

void drawCircle(int xc, int yc, int x, int y) 
{ 
    point(xc+x, yc+y); point(xc-x, yc+y);   point(xc+x, yc-y); point(xc-x, yc-y); 
    point(xc+y, yc+x); point(xc-y, yc+x);   point(xc+y, yc-x); point(xc-y, yc-x);    
} 

void circleBres(int xc, int yc, int r) 
{ 
    int x = 0, y = r; 
    int d = 3 - 2 * r; 
    drawCircle(xc, yc, x, y); 
    while (y >= x) 
    {     
        x++; 
        if (d > 0) 
        { 
            y--;  
            d = d + 4 * (x - y) + 10; 
        } 
        else
            d = d + 4 * x + 6; 
        drawCircle(xc, yc, x, y); 
 
    } 
} 


void draw()
{
  int xc=500,yc=500,r2=300;
  circleBres(xc,yc,r2);
}
