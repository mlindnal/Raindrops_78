PImage background;
int index = 1;
int oldTime = 0;
int threshold = 2000;
int score;
boolean start;
boolean endgame;
boolean win;
int wdth = 100;
int hgt = 50;
int lives;
Drops[] d = new Drops[700]; //an array which makes exactly 700 raindrops
Catcher catcher;

void setup() {
  background = loadImage("rainmakerbackground.jpg"); //set background
  size(background.width, background.height);
 for (int i = 0; i < d.length; i++) { 
 d[i] = new Drops();
  }
  catcher = new Catcher(); //declare booleans, varialbes, and a catcher
  endgame=false;
  lives=3;
  start=false;
 win=false;
}
void draw() {
  if (start==false) { //if the game is not started then it will not run and a start screen will be present
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/2,height/2,wdth,hgt);
  fill(0);
  textAlign(CENTER);
    textSize(20);
    text("Start", width/2, height/2);
  }
  if (start==true && win==false) { //if the game is started then it will run accordingly 
    background(background);
    textSize(72);
    fill(237, 255, 3);
    text(score, height/3,width/2);
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
    if (d[i].loc.y>height && d[i].loc.y<height+d[i].d/4) { //if the raindrop has passed the the bottom of the screen then a life should be taken away
        lives--;
    }
      if (lives==0) {
        endgame=true;
    }
    }
    if (millis() - oldTime > threshold) { //time for set intervals of raindrops
      if (index < d.length) {
        index++;
        oldTime = millis();
      }
    if (endgame==true) { //if the game is over then the game over screen will appear
        background(255,0,0);
        textAlign(CENTER);
        text("GAME OVER", width/2, height/2);
   }
  }
 if (score>=30){
   win=true;
 }
if (win==true) { //if the game has been one, 
background(0,255,0);
        textAlign(CENTER);
        text("YOU WIN", width/2, height/2);
      }
println(lives);
  }
}
void mousePressed() { //press to start the game
    start=true;
  }
void keyPressed(){ // if the game is over press r to reset the game
 if(key == 'r'){
  background(0);
   start=false;
   endgame=false;
   win=false;
  score=0;
 }
}


