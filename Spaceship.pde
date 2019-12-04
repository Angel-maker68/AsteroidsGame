class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myCenterX=250;
    myCenterY=250;
    myDirectionX=0;
    myDirectionY=0;
    myPointDirection=0;
    myColor=255;
  }
  public void setDirectionX(double x) {
    myDirectionX=x;
  }
  public void setDirectionY(double y) {
    myDirectionY=y;
  }
  public void setmyCenterX(double x) {
    myCenterX=x;
  }
  public void setmyCenterY(double y) {
    myCenterY=y;
  }
  public void setmyPointDirection(double z) {
    myPointDirection=z;
  }
}
