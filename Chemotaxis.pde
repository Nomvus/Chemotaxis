Bacteria [] groupOneQuad = new Bacteria[2000];
Bacteria [] groupTwoQuad = new Bacteria[2000];
Bacteria [] groupThreeQuad = new Bacteria[2000];
Bacteria [] groupFourQuad = new Bacteria[2000];

void setup()   
 {     
  for(int i = 0; i < groupOneQuad.length; i++){
    groupOneQuad[i] = new Bacteria(6, 6);
    groupTwoQuad[i] = new Bacteria(4, 6);
    groupThreeQuad[i] = new Bacteria(6, 4);
    groupFourQuad[i] = new Bacteria(4, 4);
  }
  background(0);
   size(1000, 1000);
 }   
 void draw()   
 {    
   for(int i = 0; i < groupOneQuad.length; i++){
    groupOneQuad[i].show();
    groupOneQuad[i].move();
    groupTwoQuad[i].show();
    groupTwoQuad[i].move();
    groupThreeQuad[i].show();
    groupThreeQuad[i].move();
    groupFourQuad[i].show();
    groupFourQuad[i].move();
   }
 }
void mousePressed()
{
  background(0);

  redraw();
}
 class Bacteria    
 {     
    int myX, myY, myColor, myXMove, myYMove;

    Bacteria(int x, int y) {
      myX = myY = 500;
      myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      myXMove = x;
      myYMove = y;
    }
    void move()
    {
      myX = myX + (int)(Math.random()*11)-myXMove;
      myY = myY + (int)(Math.random()*11)-myYMove;
    }
    void show()
    {
      fill(myColor);
      ellipse(myX, myY, 3, 3); 
    }
 }   
