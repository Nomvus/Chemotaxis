
int [] movingX = {4, -4, -4, 4};
int [] movingY = {4, 4, -4, -4};
Bacteria groupOneQuad = new Bacteria(movingX[0], movingY[0]);
Bacteria groupTwoQuad = new Bacteria(movingX[1], movingY[1]);
Bacteria groupThreeQuad = new Bacteria(movingX[2], movingY[2]);
Bacteria groupFourQuad = new Bacteria(movingX[3], movingY[3]);
void setup()   
 {     
  background(0);
 	size(1000, 1000);
 }   
 void draw()   
 {    
    groupOneQuad.show();
    groupOneQuad.move();
    groupTwoQuad.show();
    groupTwoQuad.move();
    groupThreeQuad.show();
    groupThreeQuad.move();
    groupFourQuad.show();
    groupFourQuad.move();
 }  
 class Bacteria    
 {     
    int myX, myY, myColor, myXMove, myYMove;
    Bacteria(int x, int y) {
      myX = myY = 500;
      myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      x = myXMove;
      y = myYMove;
    }
    void move()
    {
      myX = myX + (int)(Math.random()*11)-myXMove;
      myY = myY + (int)(Math.random()*11)-myYMove;
    }
    void show()
    {
      fill(myColor);
      ellipse(myX, myY, 30, 30);
      
    }
    
    

 }    
