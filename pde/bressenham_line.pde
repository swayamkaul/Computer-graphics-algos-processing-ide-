  int x1=10;
  int x2=700;
  int y1=10;
  int y2=700;
void setup()
{
   size(1000,1000);  
}

void draw()
{
  int m_new = 2 * (y2 - y1); 
   int slope_error_new = m_new - (x2 - x1); 
   for (int x = x1, y = y1; x <= x2; x++) 
   { 
     point(x,y);
     slope_error_new += m_new;
      if (slope_error_new >= 0) 
      { 
         y++; 
         slope_error_new  -= 2 * (x2 - x1); 
      }
   }
}
