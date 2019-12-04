
class Asteroid extends Floater
{
  private int rotSpeed=((int)Math.random()*5)-5;
  public Asteroid()
  {
    corners = 11;
    xCorners = new int[]{0, 3, 5, 7, 7, 5, 2, -6, -8, -6, -3};
    yCorners = new int[]{6, 6, 2, -1, -3, -4, -4, -2, 0, 3, 5};
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
    myDirectionX=(Math.random()*3)-3;
    myDirectionY=(Math.random()*3)-3;
    myPointDirection=0;
    myColor=color(255);
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
} 
