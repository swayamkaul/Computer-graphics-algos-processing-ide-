
  int X0=10,Y0=10,X1=60,Y1=200;
  int dx = X1 - X0; 
    int dy = Y1 - Y0; 
  
    int steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy); 
  
    float Xinc = dx / (float) steps; 
    float Yinc = dy / (float) steps; 
  
    float X = X0; 
    float Y = Y0; 
void setup()
{
  size(500,500);  
}

void draw()
{
  
    for (int i = 0; i <= steps; i++) 
    { 
       point(X,Y); 
        X += Xinc;         
        Y += Yinc;           
    } 
}
