double holeSize = 1;
int newBall = 0;

class Particle{
int myColor, paritcleSize;
double angle, speed, myX, myY;

Particle(){
paritcleSize = 5;
myX = Math.random() * 50 + 225;
myY = Math.random() * 50 + 225;
myColor = color(0, (int)(Math.random()*120) + 60, (int)(Math.random()*60) + 180);
angle = Math.random()*2*PI;
//speed = 0;
}

void move(){
  speed = Math.random() * 15 - 7.5;
myX += Math.cos(angle) * speed;
myY += Math.sin(angle) * speed;
}

void show(){
fill(myColor);
noStroke();
ellipse((int)myX,(int)myY,paritcleSize,paritcleSize);
}

}//end of particle class


Particle [] WardellStephenCurryII = new Particle[(int)(Math.random()*301)+200];




void setup(){
size(500, 500);

for (int i = 0; i < WardellStephenCurryII.length; i++){
  WardellStephenCurryII[i] = new Particle();
}
}

void draw(){
  background(0);
for (int i = 0; i < WardellStephenCurryII.length; i++){
  WardellStephenCurryII[i].move();
  WardellStephenCurryII[i].show();
  if (WardellStephenCurryII[i].myX > 500 || WardellStephenCurryII[i].myX < 0){
  WardellStephenCurryII[i].myX = Math.random() * 50 + 225;
  }
  if (WardellStephenCurryII[i].myY > 500 || WardellStephenCurryII[i].myY < 0){
  WardellStephenCurryII[i].myY = Math.random() * 50 + 225;
  }
  fill(0);
  ellipse(250, 250, (int)size, (int)size);
  
}
if (holeSize == 200 && newBall < WardellStephenCurryII.length){
  WardellStephenCurryII[newBall] = new StephBall();
} 

holeSize += 1;
if (holeSize > 200){
holeSize = 1;
if (newBall < WardellStephenCurryII.length)
newBall++;
}

}


class StephBall extends Particle{
  StephBall(){
  paritcleSize = 30;
myX = 250;
myY = 250;
myColor = color(0, 0, 255);
angle = (int)(Math.random()*8) * (PI/4);

}
  
}
