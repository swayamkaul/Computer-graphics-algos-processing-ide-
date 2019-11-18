
 float y=0.05;
float a = 0.0;
float rSize;  // rectangle size
float x=0;
void setup() {
  size(1000, 1000, P3D);
  rSize = width / 6;  
  //noStroke();
  fill(204, 204);
}

void draw() {  
  background(126);
  stroke(255);
   a += 0.005;
  if(a > TWO_PI) { 
    a = 0.0; 
  }
 
  translate(width/2,height/2);
  rotateX(a);
  rotateY(a*2);
 
  beginShape();
  
  line(0,0,0,0,0,100);
  
  line(0,0,0,100,0,0);
  
  line(0,0,0,0,100,0);
  
  line(0,100,0,0,100,100);
  
  line(0,100,0,100,100,0);
  
  line(0,100,100,0,0,100);
  
  line(0,100,100,100,100,100);
  
  line(100,100,100,100,100,0);
  
  line(100,100,100,100,0,100);
  
  line(100,0,0,100,100,0);
  
  line(100,0,0,100,0,100);
  
  line(100,0,100,0,0,100);
  
  endShape();
  
  translate(-100,-100);
  
  rotateX(3.14/3);
  
  scale(x);
  
  beginShape();
  
  line(0,0,0,0,0,100);
  
  line(0,0,0,100,0,0);
  
  line(0,0,0,0,100,0);
  
  line(0,100,0,0,100,100);
  
  line(0,100,0,100,100,0);
  
  line(0,100,100,0,0,100);
  
  line(0,100,100,100,100,100);
  
  line(100,100,100,100,100,0);
  
  line(100,100,100,100,0,100);
  
  line(100,0,0,100,100,0);
  
  line(100,0,0,100,0,100);
  
  line(100,0,100,0,0,100);
  
  endShape();
 
x+=y;

if(x>2||x<0)
y*=-1;

  delay(100);
  //a += 0.005;
  //if(a > TWO_PI) { 
  //  a = 0.0; 
  //}
  
  //translate(width/2, height/2);
  
  //rotateX(a);
  //rotateY(a * 2.0);
  //fill(255);
  //rect(-rSize, -rSize, rSize*2, rSize*2);
  
  //rotateX(a * 1.001);
  //rotateY(a * 2.002);
  //fill(0);
  //rect(-rSize, -rSize, rSize*2, rSize*2);

}
