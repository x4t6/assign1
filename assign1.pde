/* please implement your assign1 code in this file. */
PImage fighter,enemy,treasure,hp,bg1,bg2;
int eRandx,eRandy;
int tRandx,tRandy;

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
  eRandy = floor(random(0,440));

}

void draw() {
  image(bg1,0,0);
  image(hp,15,15);
  image(fighter,570,215);
  image(treasure,tRandx,tRandy);
  image(enemy,eRandx,eRandy);
  
  eRandx += 4 ;
  eRandx %= 640 ;
  // your code
}
