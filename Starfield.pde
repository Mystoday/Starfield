class Particle{
double Speed,Angle,myX,myY;
int myColor,mySize,is;

Particle(){
myX=250;
myY=250;
myColor=(int)(Math.random()*254);
Angle=Math.random()*355;
Speed=Math.random()*4+1;
mySize=(int)(Math.random()*20+5);
is=1;
}

void show(){
  if(is==1){
ellipse((float)myX,(float)myY,mySize,mySize);
  }
  else if(is==2){
  rect((float)myX,(float)myY,mySize,mySize);
  }
fill((int)(Math.random()*200),myColor+(int)(Math.random()*200),255);
}

void move(){
myX=myX+Math.cos(Angle)*Speed;
myY=myY+Math.sin(Angle)*Speed;
if(myX>499){
myX=myX-249;
myY=250;
}
if(myX<1){
myX=myX+249;
myY=250;
}
if(myY<1){
myY=myY+249;
myX=250;
}
if(myY>499){
myY=myY-249;
myX=250;
}

}

}//end of Particle class
class Par extends Particle{
Par(){
myX=250;
myY=250;
myColor=200;
Angle=Math.random()*20;
Speed=Math.random()*3+1;
mySize=(int)(Math.random()*20)+10;
is=2;
}

}

Particle[]go=new Particle[100];

void setup(){
 size(500,500);
 for(int i=0;i<go.length;i++){
   if(i%15==0){
      go[i]=new Par();
    }
    else {

  go[i]=new Particle();
    }
  }
}
void draw(){
  background(0);
  for(int i=0;i<go.length;i++){
  go[i].move();
  go[i].show();
 }
}
