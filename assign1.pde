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
  
  // the position of enemy
  x = 0;
  y = floor(random(450));
  
  // the size of treasure
  a = floor(random(610));
  b = floor(random(430)); 
  
  // the width of hp
  w = floor(random(203));
  
  // the initial position of background
  z = 0;
}

void draw() {
  
  //background
  image(background1Img,z % 1280 -640,0);
  image(background2Img,(z+640) % 1280 -640,0);
  
  // fighter
  image(shipImg,580,240);
  
  // enemy
  image(enemyImg,x,y);
  
  // treasure
  image(treasureImg,a,b);
  
  // hp
  fill(#ff0000);
  rectMode(CORNER);
  rect(34,22,w,20);
  image(hpImg,30,20);
  
  x += 2;
  x %= 640;
  z += 1;
  
}
