public class ball
{
    private int xspd=int(random(1,5)),yspd=int(random(1,5));
    private int x=int(random(width)),y=int(random(height));
    private int size=int(random(100));
  

  
public ball(int x,int y,int xspd,int yspd,int size)
{
  this.x=x;
  this.y=y;
  this.xspd=xspd;
  this.yspd=yspd;
  this.size=size;
}

public void display()
{
  fill(255);
  ellipse(x,y,size,size);
}

public void move()
{
  x+=xspd;
  y+=yspd;
  if(x+(size/2)>width||x-(size/2)<0)
  xspd*=-1;
  if(y+(size/2)>height||y-(size/2)<0)
  yspd*=-1;
}

public boolean checkclick(int x, int y)
{
  double distance;
  distance = Math.sqrt((Math.pow((this.x -x ),2)+(Math.pow((this.y - y),2))));
  if(distance<size/2)
  return true;
  return false;

}

public void setX(int x)
{
this.x=x;
this.xspd=0;
}
public void setY(int y)
{
  this.y=y;
  this.yspd=0;

}
public void changexy()
{
  setX(mouseX);
  setY(mouseY);
}
public int getX()
{
  return this.x;
}
public int getY()
{
  return this.y;
}
}
