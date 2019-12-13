Spaceship Destiny= new Spaceship();
ArrayList <Asteroid> Bob= new ArrayList <Asteroid>();
ArrayList <Bullet> tullet= new ArrayList <Bullet>();
public void setup() {
  size(500, 500);
  for (int i=0; i<sky.length; i++) {
    sky[i]= new Star();
  }
  for (int i=0; i< 21; i++) {
    Bob.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<Bob.size(); i++) {
    Bob.get(i).show();
    Bob.get(i).move();
  }
  Destiny.show();
  Destiny.move();
  for (int i=0; i<sky.length; i++) {
    sky[i].show();
  }
  for (int i=0; i<tullet.size(); i++) {
    tullet.get(i).show();
    tullet.get(i).move();
  }
    for (int i = 0; i < tullet.size()-1; i++) {
      for(int j=0; j< Bob.size()-1;j++){
     if (dist((float)tullet.get(i).myCenterX, (float)tullet.get(i).myCenterY,(float) Bob.get(j).myCenterX, (float)Bob.get(j).myCenterY)<10){
   Bob.remove(j);
   tullet.remove(i);
   break;
 }
      }
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
public void mousePressed() {
  tullet.add(new Bullet(Destiny));
}
