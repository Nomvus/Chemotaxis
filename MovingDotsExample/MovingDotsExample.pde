Mover [] dots;
void setup(){
  size(300,300);
  background(0);
  dots = new Mover[10];
  for(int i = 0; i < dots.length;i++)
  {
    dots[i] = new Mover();
  }
}
void draw(){
  for(int i = 0; i < dots.length;i++)
  {

    dots[i].show();

    dots[i].move();
  }
}
class Mover{
  int x, y;
  Mover(){
    x = 0;
    y = (int)(Math.random()*300);
  }
  void move(){
    x++;
  }
  void show(){
    fill(255);
    ellipse(x,y,20,20);
  }
}
