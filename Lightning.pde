int x = 45;

void setup()
{
  size(600,600);
  background(#030F40);
}
void draw()
{
  cloud();
}
void cloud()
{
  fill(#796E6E);
  noStroke();
  arc(x,75,60,60,PI/2,3*PI/2);
  arc(73,100,70,50,0,PI);
  arc(143,100,85,50,0,PI);
  arc(143,50,75,50,PI,2*PI);
  arc(73,50,75,50,PI,2*PI);
  arc(175,75,60,60,3*PI/2,5*PI/2);
  quad(x,50,180,50,180,100,45,100);
  
  
}

void mousePressed()
{

}
