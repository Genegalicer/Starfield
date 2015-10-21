NormalParticle[] sky;
void setup()
{
  size(500,500);
  sky = new NormalParticle[20];
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new NormalParticle();
  }
  
}
void draw()
{
  background(255);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].move();
    sky[i].show();
  }
  
}
class NormalParticle
{
  int ncolor;
    double x,y,speed,angle;
  NormalParticle()
    {
      x=2;
      y=3;
      ncolor=4;
      speed=5;
      angle=6;
    }
     public void move()
      {
       x+=(Math.cos(angle)*speed);
       y+=(Math.sin(angle)*speed);
      }
      public void show()
      {
       fill(ncolor);
       ellipse((float)x,(float)y,10,10);
      }
 
}
interface Particle
{
  
}
class OddballParticle //uses an interface
{
  
}
class JumboParticle //uses inheritance
{
 
}
