PImage background;
int index = 1;
int oldTime = 0;
int threshold = 2000;
Drops[] d = new Drops[700]; //an array which makes exactly 700 raindrops
Catcher catcher;
int score;
boolean start;
boolean stop;
boolean endgame;
boolean levelup;
int wdth = 100;
int hgt = 50;
int lives;

void setup() {
  background = loadImage("rainmakerbackground.jpg"); //set background
  size(background.width, background.height);
  start=false;
  for (int i = 0; i < d.length; i++) { 
    d[i] = new Drops();
  }
  catcher = new Catcher();
  endgame=false;
  lives=3;
  start=false;
  levelup=false;
}

void draw() {
  if (start==false) {
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/2,height/2,wdth,hgt);
  fill(0);
  textAlign(CENTER);
    textSize(20);
    text("Start", width/2, height/2);
  }
  if (start==true && levelup==false;) {
    background(background);
    textSize(72);
    fill(237, 255, 3);
    text(score, 10, 100);
    catcher.display();
    catcher.move();
    for (int i = 0; i < index; i++) {
      d[i].display();
      d[i].drop();
      if (catcher.catchDrop(d[i]) == true) {
        d[i].shoo();
        score++;
        threshold-=10;
      }
    if (d[i].loc.y>height && d[i].loc.y<height+d[i].d/8) {
        lives--;
      }  
      if (lives==0) {
        endgame=true;
    }
    }
   
    if (millis() - oldTime > threshold) {
      if (index < d.length) {
        index++;
        oldTime = millis();
      }
    if (gameover==true) {
        background(random(255), random(255), random(255));
        textMode(CENTER);
        text("GAME OVER", width/2, height/2);
    }
  }
}
}
void mousePressed() {
    start=true;
  }
void keyPressed(){
 if(key == 'r'){
  background(0);
   start=false;
  stop=false;
  score=0;
 } 
}

