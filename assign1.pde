PImage hp;
PImage enemy;
PImage treasure;
PImage fighter;
PImage bg1;
PImage bg2;
int a ;
int b ;
int c ;
int d ;
int e ;
int f ;
int g ;
void setup(){
  background(0);
  size(640,480);
  a=0 ;
  b=0 ;
  g=floor(random(10,200));
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,440));
  f=floor(random(0,440));
  fill(255,0,0);
  rect(10,10,g,31);
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  enemy=loadImage("img/enemy.png");
  treasure=loadImage("img/treasure.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");

}
void draw(){
  image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,500,f);
  a += 1 ;
  b += 2 ;
  a %= 1280 ;
  b %= 600 ;
  f %= 440 ;
}
