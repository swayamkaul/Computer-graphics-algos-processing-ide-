ball[] Ball= new ball[10];
String fir="Put all the Balls in the Basket.";
String nex="You Win!#ball_is_lyf";
String ba="BASKET";
int flag=1;

void setup()
{
  size(1280,840);
    for(int i=0;i<10;i++)
   {
     Ball[i]=new ball(int(random(width)),int(random(height)),int(random(3,10)),int(random(3,10)),int(random(50,150)));
   }
   
}
void draw()
{
  
  background(80,200,80);

  fill(255,69,0);
  rect(1000,640,200,200);
  fill(255);
  textSize(20);
  text(ba,1010,660);
  
  for(int i=0;i<10;i++)
   {
     Ball[i].display();
     Ball[i].move();
   }
  if( mousePressed)
  mousePressed();
   for(int i=0;i<10;i++)
   {  
     if(!(Ball[i].getX()  > 1000 && Ball[i].getX() < 1200 && Ball[i].getY() > 640 && Ball[i].getY() < 840))
       {
          flag=1;
          break;
       }
       else
       flag=0;
     
       
   }
   if(flag==1)
       {
           PFont f = createFont("Georgia",64);
           textFont(f);
           textSize(64);
           text(fir,100,100);
       }
      else
      {
          PFont f = createFont("Georgia",64);
          textFont(f);
          textSize(64);
          text(nex,100,100);
      }
} 
void mousePressed()
{
  for(int i=0;i<10;i++)
   {  
     if( Ball[i].checkclick(mouseX, mouseY) )
      {
      Ball[i].changexy();
      }
   }

}
