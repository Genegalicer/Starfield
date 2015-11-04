Particle[]sky;
void setup()
{
  size(500,500);
    sky = new Particle[50];
  for(int i = 0; i<sky.length; i++){
     sky[i]= new NormalParticle();
  }
  sky[49] = new JumboParticle();
    sky[48] = new OddballParticle();
}
void draw()
{
  background(0,0,0);
  fill(0,0,0,0);
  rect(0,0,500,500);
    for(int i = 0; i<sky.length; i++){
       sky[i].show();
       sky[i].move();
  } 
}
class NormalParticle  implements Particle
{
  int colors, colors2, colors3;
  int sise;
  double X, Y, Angle, Speed; 
    NormalParticle(){
    sise=5;
        X=50;
        Y=50;
  Angle = Math.random()*100;
  Speed = Math.random()*10;
  
  colors = (int)(Math.random()*255);
    colors2 = (int)(Math.random()*255);
      colors3 = (int)(Math.random()*255);
  }
 public void move(){
   X=X+ Math.cos(Angle) * Speed;
   Y=Y+ Math.sin(Angle) * Speed;
   if(X>500 || X<0){
   Y=250;
   X=250;
     Angle = Math.random()*200;
   }
   if(Y>500 || Y<0){
   Y=250;
   X=250;
     Angle = Math.random()*200;
   }
  }
  public void show(){
    stroke(colors3,colors,colors2); 
 fill(colors3,colors,colors2);     
  ellipse((float)X, (float)Y, sise,sise);
  }
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle 
{
  int xBac, yBac;
  int changeX = 5;
  int changeY = 5;
  int colors;
  int sise;
  double X, Y, Angle, Speed; 
  OddballParticle(){
    sise=20;
       xBac = (int)(Math.random()*500);
      yBac = (int)(Math.random()*500);
  }
  public void move(){
    xBac = xBac +  (int)(Math.random()*10-changeX);
    yBac = yBac + (int)(Math.random()*10-changeY);
      if(xBac>500||xBac<0){
        xBac = (int)(Math.random()*500);
      }
      if(yBac>500||yBac<0){
         yBac = (int)(Math.random()*500);
      }
  }
  public void show(){
   stroke(255);
   fill(255);     
   ellipse(xBac, yBac, sise,sise);
  }
}
class JumboParticle extends NormalParticle
{
  JumboParticle(){
      colors = (int)(Math.random()*255);
      colors2 = (int)(Math.random()*255);
      colors3 = (int)(Math.random()*255);
      sise= 30;
  }
}
