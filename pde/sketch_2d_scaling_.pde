void setup()
{
  size(700,700);
}


void findNewCoordinate(int[][] s, int[][] p) 
{ 
    int[][] temp = new int[2][1]; 
  
  
    for (int i = 0; i < 2; i++) 
        for (int j = 0; j < 1; j++) 
            for (int k = 0; k < 2; k++) 
                temp[i][j] += (s[i][k] * p[k][j]); 
  
    p[0][0] = temp[0][0]; 
    p[1][0] = temp[1][0]; 
} 
  
// Scaling the Polygon 
void scale(int x[], int y[], int sx, int sy) 
{ 
    // Triangle before Scaling 
    line(x[0], y[0], x[1], y[1]); 
    line(x[1], y[1], x[2], y[2]); 
    line(x[2], y[2], x[0], y[0]); 
  
    // Initializing the Scaling Matrix. 
    int[][] s = { {sx, 0}, {0, sy} }; 
    int[][] p=new int[2][1]; 
  
    // Scaling the triangle 
    for (int i = 0; i < 3; i++) 
    { 
        p[0][0] = x[i]; 
        p[1][0] = y[i]; 
  
        findNewCoordinate(s, p); 
  
        x[i] = p[0][0]; 
        y[i] = p[1][0]; 
    } 
  
    // Triangle after Scaling 
    line(x[0], y[0], x[1], y[1]); 
    line(x[1], y[1], x[2], y[2]); 
    line(x[2], y[2], x[0], y[0]); 
} 
  
// Driven Program 
void draw(){
    int x[] = { 100, 200, 300 }; 
    int y[] = { 200, 100, 200 }; 
    int sx = 2, sy = 2; 
  

  
    scale(x, y, sx,sy); 
} 
