Star [] sky=new Star[300];
public class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  public Star() {
    myX=Math.random()*500;
    myY=Math.random()*500;
  }
  public void show() {
    ellipse((float)myX, (float)myY, 5, 5);
    fill(255);
    noStroke();
  }
}
