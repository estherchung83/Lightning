int c = 35;
int startX =  50;
int startY = 120;
int endX = 60;
int endY = 60;
void setup()
{
  size(400,400);
  background(#030F40);
}
void draw()
{
  rain();
  lightning();
  cloud();
  
  
}
void cloud()
{
  while (c<400)
  {
     fill(#796E6E);
     noStroke();
     arc(c,75,60,60,PI/2,3*PI/2);
     arc(c+28,100,70,50,0,PI);
     arc(c+98,100,85,50,0,PI);
     arc(c+98,50,75,50,PI,2*PI);
     arc(c+28,50,75,50,PI,2*PI);
     arc(c+130,75,60,60,3*PI/2,5*PI/2);
     quad(c,50,c+135,50,c+135,100,c,100);
     c = c + 200;
  }  
}

void lightning()
{

  stroke(#FAEE03);
  strokeWeight(4);
  while( startY < 400)
  {
  endX = startX + (int)(Math.random() * 15)-5;
  endY = startY + (int)(Math.random() * 45) - 10;
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  }
}
void rain()
{
 noStroke();
 fill(#1394E8);
 ellipse(300,300,16,16);
 triangle(300,280,308,300,292,300);
}
void mousePressed()
{
  startX = startX + (int)(Math.random()*50) + 20;
  startY = 120;
  
  
}
