int c = 35;
int startX =  50;
int startY = 120;
int endX = 60;
int endY = 60;

int ry = 150;
void setup()
{
  background(#030F40);
  size(400,400);
  
}
void draw()
{
  
  rain();  
  lightning();
  cloud();
  
  
}
void cloud()
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
     
     arc(c + 200,75,60,60,PI/2,3*PI/2);
     arc(c+228,100,70,50,0,PI);
     arc(c+298,100,85,50,0,PI);
     arc(c+298,50,75,50,PI,2*PI);
     arc(c+228,50,75,50,PI,2*PI);
     arc(c+330,75,60,60,3*PI/2,5*PI/2);
     quad(c + 200,50,c+335,50,c+335,100,c + 200,100);
   
  
}

void lightning()
{

  stroke(#FAEE03);
  strokeWeight(3);
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
 ellipse(50,ry + 20,16,16);
 triangle(50,ry,58,ry + 20,42,ry + 20);
 ellipse(110,ry + 20,16,16);
 triangle(110,ry,118,ry + 20,102,ry + 20);
 ellipse(170,ry + 20,16,16);
 triangle(170,ry,178,ry + 20,162,ry + 20);
 ellipse(230,ry + 20,16,16);
 triangle(230,ry,238,ry + 20,222,ry + 20);
 ellipse(290,ry + 20,16,16);
 triangle(290,ry,298,ry + 20,282,ry + 20);
 ellipse(350,ry + 20,16,16);
 triangle(350,ry,358,ry + 20,342,ry + 20);
 ry = ry + 50;
 if (ry> 390)
 {
   background(#030F40);
   ry = 150;
 }
 
}


void mousePressed()
{
  startX = (int)(Math.random()*400);
  startY = 120;
  
  
}
