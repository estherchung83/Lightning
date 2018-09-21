int c = 35;
int startX = ((int)Math.random()) + 120;
int startY = ((int)Math.random()) + 120;
void setup()
{
  size(600,600);
  background(#030F40);
}
void draw()
{
  lightning();
  cloud();
  
}
void cloud()
{
  while (c<600)
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
  strokeWeight(8);
  line(startX,startY,50,200);
}
void mousePressed()
{
  
}
