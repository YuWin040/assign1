PImage shipImg;
PImage background1Img;
PImage background2Img;
PImage enemyImg;
PImage hpImg;
PImage treasureImg;

int x,y; // enemy's position
int a,b; // treasure's position
int w; // hp's position
int z; // bg's position


void setup () {
  size(640,480) ;
  shipImg = loadImage("img/fighter.png");
  background1Img = loadImage("img/bg1.png");
  background2Img = loadImage("img/bg2.png");
  enemyImg = loadImage("img/enemy.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  
  y = floor(random(450));
  a = floor(random(610));
  b = floor(random(430));
  w = floor(random(203));
}

void draw() {
  image(background2Img,z,0);
  image(background1Img,z+640,0);
  image(shipImg,580,240);
  image(enemyImg,x,y);
  image(treasureImg,a,b);
  fill(#ff0000);
  rectMode(CORNER);
  rect(34,22,w,20);
  image(hpImg,30,20);
  x += 3;
  x %= 640;
  z -= 1;
  z %= 640;
}
