
float a = 0.0;
float s = 0.0;
int x=1;

void setup() {
  size(640, 360);
  noStroke();
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  
  background(102);
  
  a = a + 0.04;
  //s = cos(a)*2;
  s=0.5;
  translate(width/2, height/2);
  scale(s); 
  fill(51);
  rect(0+x, 0+x, 50+x, 50+x); 
  x++;

  //translate(75, 0);
  //fill(255);
  //scale(s);
  //rect(0, 0, 50, 50);       
}
