class Bullet extends Floater
{
  private double dRadians;
  public Bullet(Spaceship Destiny) {
    myPointDirection=Destiny.getMyPointDirection();
    dRadians=myPointDirection*(Math.PI/180);
    myCenterX=Destiny.getCenterX();
    myCenterY=Destiny.getCenterY();
    myDirectionX=5*Math.cos(dRadians);
    myDirectionY=5*Math.sin(dRadians);
  }
  public void show() {
    fill(255, 0, 0);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
    
  }
  public void move(){
  myCenterX += myDirectionX;    
    myCenterY += myDirectionY;  
  }
}
