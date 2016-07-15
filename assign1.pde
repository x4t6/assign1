
/* please implement your assign1 code in this file. */
PImage fighter,enemy,treasure,hp,bg1,bg2;
int eRandx,eRandy;
int tRandx,tRandy;
int bg1X = -640, bg2X = 0;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  
  fighter = loadImage("img/fighter.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  hp = loadImage("img/hp.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  
  tRandx = floor(random(0,600));
  tRandy = floor(random(0,440));
  
  eRandx = 0;
  eRandy = floor(random(0,420));
  
}

void draw() {
  // your code
  
  image(bg1,bg1X,0);
  image(bg2,bg2X,0);
  
  fill(#FF0000);
  rect(20,15,100,30);
  image(hp,15,15);
  
  image(fighter,570,215);
  image(treasure,tRandx,tRandy);
  image(enemy,eRandx,eRandy);
  
  bg1X +=1 ;  bg2X += 1 ;
  
  eRandx += 4 ;  
  if(eRandx>640){
    eRandy = floor(random(0,420));
    eRandx %= 640 ;
  }
  
  if(bg2X>640)bg2X = -640;
  if(bg1X>640)bg1X = -640;   
}
