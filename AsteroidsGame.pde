Spaceship Destiny= new Spaceship();
Asteroid [] Bob= new Asteroid[20];
public void setup() {
  size(500, 500);
  for (int i=0; i<sky.length; i++) {
    sky[i]= new Star();
  }
  for (int i=0; i<Bob.length; i++) {
    Bob[i]= new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<Bob.length; i++) {
    Bob[i].show();
    Bob[i].move();
  }
  Destiny.show();
  Destiny.move();
  for (int i=0; i<sky.length; i++) {
    sky[i].show();
  }
}
public void keyPressed() {
  if (key== 'h')
  {
    Destiny.setDirectionX(0);
    Destiny.setDirectionY(0);
    Destiny.setmyCenterX(Math.random()*500);
    Destiny.setmyCenterY(Math.random()*500);
    Destiny.setmyPointDirection(Math.random()*500);
  }
  if (key=='d') {
    Destiny.turn(20);
  }

  if (key=='w') {
    Destiny.accelerate(0.1);
  }
  if (key=='a') {
    Destiny.turn(-20);
  }
  if (key=='s') {
    Destiny.accelerate(-0.1);
  }
}
