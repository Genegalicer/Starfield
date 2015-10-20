void draw()
{
 
}
class NormalParticle
{
  int ncolor;
  double x,y,speed angle;

  NormalParticle()
    {
      x=1;
      y=1;
      ncolor=1;
      speed=1;
      angle=1;
    }
     void move()
      {
       x+=(Math.cos(angle)*speed);
       y+=(Math.sin(angle)*speed);
      }
      void show{}
      {
       
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
